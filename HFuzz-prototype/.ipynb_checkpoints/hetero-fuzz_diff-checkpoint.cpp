/*
@author: Qian Zhang
@time: Jul 20, 2020
*/

#define AFL_MAIN
#define MESSAGES_TO_STDOUT

#define _GNU_SOURCE
#define _FILE_OFFSET_BITS 64

#ifdef __cplusplus
extern "C" {
#endif
#include "config.h"
#include "types.h"
#include "debug.h"
#include "alloc-inl.h"
#include "hash.h"

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <time.h>
#include <errno.h>
#include <signal.h>
#include <dirent.h>
#include <ctype.h>
#include <fcntl.h>

#include <string.h>

#include <sys/time.h>
#include <sys/resource.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/shm.h>
#include <sys/ipc.h>
#ifdef __cplusplus
}
#endif

#include <vector>
#include <string>
#include <iostream>
#include <fstream> 

static char in_dir[256];
static char out_dir[256];
static int max_trials;
static long long start_time;
static long long end_time;
struct queue_entry {
  char fname[256];                      /* File name for the test case      */
  u32 len;                            /* Input length                     */

  u8  cal_failed,                     /* Calibration failed?              */
      trim_done,                      /* Trimmed?                         */
      was_fuzzed,                     /* Had any fuzzing done yet?        */
      passed_det,                     /* Deterministic stages passed?     */
      has_new_cov,                    /* Triggers new coverage?           */
      var_behavior,                   /* Variable behavior?               */
      favored,                        /* Currently favored?               */
      fs_redundant;                   /* Marked as redundant in the fs?   */

  u32 bitmap_size,                    /* Number of bits set in bitmap     */
      exec_cksum;                     /* Checksum of the execution trace  */

  u64 exec_us,                        /* Execution time (us)              */
      handicap,                       /* Number of queue cycles behind    */
      depth;                          /* Path depth                       */

  u8* trace_mini;                     /* Trace bytes, if kept             */
  u32 tc_ref;                         /* Trace bytes ref count            */

  struct queue_entry *next,           /* Next element, if any             */
                     *next_100;       /* 100 elements ahead               */

};

struct characteristic{
  char fname[256];
  u32 value;
};

static std::vector<queue_entry*> input_queue; /* Fuzzing queue */
std::vector<double> prob = {0.167, 0.167, 0.167, 0.167, 0.167, 0.167};  /*Probability vector*/

static u8* trace_bits;                /* SHM with instrumentation bitmap  */
static u8  total_bits[MAP_SIZE];     /* Up to now coverage */
static std::vector<characteristic*> divergence;  /* SHM with divergence*/
static std::vector<bool> mut = {false,false,false,false,false,false}; 

static int child_pid = -1;            /* PID of the fuzzed program        */
static int shm_id;                    /* SHM ID */
static u16 count_class_lookup16[65536];
static FILE* plot_file; 
static bool hardware_enabled = 0;     /*enable kernel simulation*/
static bool devcloud_fpga_enable = 0; /*enable devcloud fpga simulation*/
static bool devcloud_fpga_hd_enable = 1;
static bool devcloud_gpu_enable = 0;  /*enable devcloud gpu*/
static int current_max = 0;
static double GFLOPS_max = 0;
static double GFLOPS_min = 65536;
static double DSP_min = 65536;
static double DSP_max = 0;
static double fmax_min = 65536;
static double fmax_max = 0;
static double time_max = 0;
static int exec_time_max = 0;
static int input_max = 0;
static int input_min = 0;
static float float_max = 655360000000;

static s32 out_fd,
           dev_urandom_fd = -1,
           out_dir_fd = -1,
           dev_null_fd = -1;

static u8 *out_file;

enum {
  /*00*/ NOT_INTEREST,
  /*01*/ NEW_COVERAGE,
  /*02*/ NEW_HARDWARE,
  /*03*/ NEW_BOTH
};

/* Execution status fault codes */
enum {
  /* 00 */ FAULT_NONE,
  /* 01 */ FAULT_CRASH,
  /* 02 */ FAULT_ERROR
};

/* Get unix time in milliseconds */

static u64 get_cur_time(void) {

  struct timeval tv;
  struct timezone tz;

  gettimeofday(&tv, &tz);

  return (tv.tv_sec * 1000ULL) + (tv.tv_usec / 1000);

}

/* Display usage hints. */

static void usage(char* argv0) {

  SAYF("Usage: \n%s input_dir output_dir max_trials /path/to/fuzzed_app \n\n", argv0);

  exit(1);

}

static void list_dir(const char *path)
{
    struct dirent *entry;

    DIR *dir = opendir(path);
    if (dir == NULL) {
        return;
    }

    while ((entry = readdir(dir)) != NULL) {
        if(entry->d_name[0]=='.')
            continue;
        struct queue_entry *q = (struct queue_entry *)malloc(sizeof(queue_entry));
        //q->fname = entry->d_name;
        std::string file_name = std::string(path) + std::string(entry->d_name);
        memcpy(q->fname, file_name.c_str(), strlen(file_name.c_str()));
        input_queue.push_back(q);
    }

    closedir(dir);
}

/* Make a copy of the current command line. */

static void save_cmdline(u32 argc, char** argv) {

  u32 len = 1, i;
  unsigned char* buf;

  for (i = 0; i < argc; i++)
    len += strlen(argv[i]) + 1;
  
  buf = ck_alloc(len);

  for (i = 0; i < argc; i++) {

    u32 l = strlen(argv[i]);
//    printf("%s\n", argv[i]);
    memcpy(buf, argv[i], l);
    buf += l;

    if (i != argc - 1) *(buf++) = ' ';

  }

  *buf = 0;

}

std::string random_replace(const std::string &str) {
  srand(time(NULL));
  int n = str.size();
  int pos = rand() % n;
  char c = str[pos];
  c ^= (1 << rand() % 7);
  std::string ret(str);
  ret[pos] = c;
  return ret;
}

std::string random_delete(const std::string &str) {
  srand(time(NULL));
  int n = str.size();
  int pos_e = rand() % n;
  
  int pos_b = rand() % pos_e;
  printf("delete position begin %d",pos_b);
  printf("delete position end %d",pos_e);
  std::string ret(str);
  ret.erase(pos_b,pos_e-pos_b);
  return ret;
}

std::string random_append_number(const std::string &str) {
  srand(time(NULL));
  int a = rand();
  float num = float_max;
  if (a%2==0){
    num = -num;
  }
  std::string ret(str);
  ret = ret + "\n" + std::to_string(num);
  return ret;
}

std::string random_add_sparsity(const std::string &str){
  srand(time(NULL));
  std::string ret(str);
  for (int i = 0; i<ret.length();i++){
    if ('0'==ret[i]){
      int num = rand()%10;
      if (num >= rand()%10){
        ret[i] = char(num+int('0'));
      }
    }
  }

  return ret;
}

std::string random_reduce_sparsity(const std::string &str){
  srand(time(NULL));
  std::string ret(str);
  for (int i = 0; i<ret.length();i++){
    if (ret[i]>'0'){
      int num = rand()%10;
      if (num >= rand()%10){
        ret[i] = '0';
      }
    }
  }
  return ret;
}

/*mutation selection based the activation probabilities of each mutation*/

int selection(){
    std::vector<int> prob_int;
    int sum = 0;
    for(int i=0;i<prob.size();i++) {
        sum += prob[i]*100;
        prob_int.push_back(sum);
    }
    int idx = rand()%100;
    int ret = 0;
    for (int i=0;i<prob_int.size();i++) {
        if(prob_int[i]>=idx) {
            ret = i;
            break;
        }
    }
    return ret;
}

std::string mutate(int fuzzing_iteration, std::string current_input){

  //printf("current input: %s\n", current_input.c_str());

  std::ifstream ifs(current_input);
  std::string content( (std::istreambuf_iterator<char>(ifs) ),
                       (std::istreambuf_iterator<char>()    ) );

  srand(time(NULL) + rand());

  int knob = rand()%6+1;
  std::cout << knob << std::endl;
  if(knob == 1){
    srand(time(0) + rand());
    int pos = rand()%(content.length()-1); //TBD: modify, only change the matrix element
    u8 new_value = rand()%256;
    while (isdigit(content[pos])==0){
      pos = rand()%(content.length()-1);
    }
    printf("selected pos: %d\n", pos);
    content[pos] = new_value;
  }
  else if(knob == 2){
    content = random_append_number(content);
  }
  else if(knob == 3){
    content = random_add_sparsity(content);
  }
  else if(knob == 4){
    int pos = rand()%(content.length()-1);
    u8 new_value = '/n';
    content[pos] = new_value;
  }else if(knob == 5){
    content = random_delete(content);
  }
  else if(knob == 6){
    content = random_reduce_sparsity(content);
  }


  std::string mutated_input = std::string(out_dir) + std::to_string(fuzzing_iteration);
  //printf("%s\n", mutated_input.c_str());
  std::ofstream out(mutated_input);
  out << content;
  out.close();
  return mutated_input;
}


int devcloud_fpga_exec(char* app, char* argv[]){
  int a;
  char* execute = "env BITSTREAM=a.aocx INTEL_FPGA_OCL_PLATFORM_NAME=\"$HW_PLATFORM\" AOC_OPTION=\"-board=$FPGA_BOARD\" ./";
  strcat(execute,app);
  strcat(execute," ");
  strcat(execute,argv[1]);
  a = std::system(execute);
  if (a<0){
    perror("Run error: error when run the host on fpga");
    exit(EXIT_FAILURE);
  }
  else {
    printf("succuess!\n");
  }

  return 0;
}

int run_target(char* app, char mutated_input[]){
  int status = 0;
  memset(trace_bits, 0, MAP_SIZE);

  // u32 ck2 = hash32(trace_bits, MAP_SIZE, HASH_CONST);
  // SAYF("check sum of 0 bitmap %u\n", ck2);

  char* argv[] = {app, mutated_input, NULL};

  child_pid = fork();
  if(child_pid < 0){
    perror("fork error.");
    exit(EXIT_FAILURE);
  }

  //std::string temp_simulation = "env BITSTREAM=a.aocx CL_CONTEXT_EMULATOR_DEVICE_INTELFPGA=1 INTEL_FPGA_OCL_PLATFORM_NAME=\"$EMULATOR_PLATFORM\" ./" + std::string(app) + std::string(" ") + std::string(argv[1]);
  //std::string temp_fpga = "env BITSTREAM=a.aocx INTEL_FPGA_OCL_PLATFORM_NAME=\"$HW_PLATFORM\" AOC_OPTION=\"-board=$FPGA_BOARD\" ./" + std::string(app) + std::string(" ") + std::string(argv[1]);
  std::string temp_fpga = "qsub -l nodes=s001-n085:ppn=2 " + std::string(app) + std::string("-fpga.sh -v ") + std::string(argv[1]);
  std::string temp_gpu = "qsub -l nodes=1:gpu:ppn=2 " + std::string(app) + std::string("-gpu.sh -v ") + std::string(argv[1]);
  const char* execute = NULL;
  if (devcloud_fpga_enable) {
    execute = temp_fpga.c_str();
  }
  if (devcloud_fpga_hd_enable){
    execute = temp_fpga.c_str();
  }
  printf("%s",execute);
  if(!child_pid){ // This is a child process
    if (devcloud_fpga_enable) {
      //devcloud_fpga_simulation_exec(app,argv);
      
      int a = std::system(temp_fpga.c_str());
      a = std::system(temp_gpu.c_str());
    }
    else if (devcloud_fpga_hd_enable){
      int a = std::system(temp_fpga.c_str());
      a = std::system(temp_gpu.c_str());
    }
    else {
      execv(app, argv);
      //int a = std::system(execute);
    }
    *(u32*)trace_bits = EXEC_FAIL_SIG;
    exit(0);
  }
  sleep(30);

  pid_t ret;
  ret = waitpid(child_pid, &status, 0);
  if(ret < 0){
    perror("wait error");
    exit(EXIT_FAILURE);
  }
  
  int tb4 = *(u32*)trace_bits;

  u32 ck1 = hash32(trace_bits, MAP_SIZE, HASH_CONST);
  SAYF("check sum of changed bitmap %u\n", ck1);

//  q->exec_cksum = ck1;

  if (!WIFSTOPPED(status)) child_pid = 0;

  if (WIFEXITED(status))
  {
    printf("child exited normal exit status= %d\n", WEXITSTATUS(status));
    return FAULT_NONE;
  }
  else if (WIFSIGNALED(status)){
    printf("child exited abnormal signal number= %d \n", WTERMSIG(status));
    return FAULT_CRASH;
  }
  //else if (WIFSTOPPED(status)){
  //   printf("child stoped signal number=%d\n", WSTOPSIG(status));
  //   return FAULT_ERROR;
  //}
  else if (tb4 == EXEC_FAIL_SIG){
    return FAULT_ERROR;
  }

  //if (devcloud_gpu_enable) {
  //  devcloud_gpu_exec(app,argv);
  //}

  //if (devcloud_fpga_enable) {
  //  devcloud_fpga_exec(app,argv);
  //}

       
}
int check_execution_divergent();

bool larger(std::string current, int max){
  if(max > atoi(current.c_str())){
    return false;
  }
  else{
    max = atoi(current.c_str());
    return true;
  }
}

bool smaller(std::string current, int min){
  if(min < atoi(current.c_str())){
    return false;
  }
  else{
    min = atoi(current.c_str());
    return true;
  }
}

int check_new_hardware(){
  int ret_val;
  if(hardware_enabled){
    std::ifstream ifs("hls_report/solution1/*.rpt");
    std::string content( (std::istreambuf_iterator<char>(ifs) ),
                       (std::istreambuf_iterator<char>()    ) );
    if(larger(content, current_max)){
      ret_val = 1;
    }else ret_val = 0;
  }else{
    ret_val = 0;
  }
  if (devcloud_gpu_enable)
  {
    std::ifstream inFile;
    inFile.open("exec_info.txt");
    double gflops=406;
    if (!inFile.is_open()){
            std::cout<<"can't open file\n";
    }
    inFile >> gflops;
    inFile.close();
    printf("GFLOPS MAX%lf\n",GFLOPS_max);
    printf("GFLOPS MIN%lf\n",GFLOPS_min);
    printf("gpu enabled with gflops:%lf\n",&gflops);
    if(gflops>GFLOPS_max){
      GFLOPS_max = gflops;
      printf("GFLOPS MAX%lf\n",GFLOPS_max);
      ret_val = 1;
    }
    else if (gflops<GFLOPS_min){
      GFLOPS_min = gflops;
      printf("GFLOPS MIN%lf\n",GFLOPS_min);
      ret_val = 1;
    }
    else {
      ret_val=0;
    }

  }

  if (devcloud_fpga_hd_enable or devcloud_fpga_enable){
    std::ifstream inFile;
    inFile.open("exec_fpga_info.txt");
    if (!inFile.is_open()){
            std::cout<<"can't open file\n";
    }
    double exec_time = 0;
    double DSPs = 0;
    double FMax = 0;
    inFile >> exec_time >> DSPs >> FMax;
    inFile.close();
    printf("fpga execution time:%lf\n",exec_time);
    if(exec_time>time_max){
      time_max = exec_time;
      printf("TIME MAX%lf\n",time);
      ret_val = 1;
    }

    if (DSPs>DSP_max){
      DSP_max = DSPs;
      printf("DSPs MAX%lf\n",DSP_max);
      ret_val = 1;
    }
    if (DSPs<DSP_min){
      DSP_min = DSPs;
      printf("DSPs MIN%lf\n",DSP_min);
      ret_val = 1;
    }

    if (FMax>fmax_max){
      fmax_max = FMax;
      printf("FMax MAX%lf\n",FMax);
      ret_val = 1;
    }
    if (FMax<fmax_min){
      fmax_min = FMax;
      printf("FMax MIN%lf\n",FMax);
      ret_val = 1;
    }
  }
  if (check_execution_divergent()==1) return 1;
  return ret_val;
}

bool verify_result(std::string output, std::string res){
  printf("%s", "check results across different platform...");
  std::ifstream ifs(output);
  std::string content( (std::istreambuf_iterator<char>(ifs) ),
                       (std::istreambuf_iterator<char>()    ) );
  std::ifstream ans(res);
  std::string answer( (std::istreambuf_iterator<char>(ans) ),
                       (std::istreambuf_iterator<char>()    ) );

  if (answer.compare(res)==0){
    return true;
  }
  printf("%s", "divergent results across different platform!");
  return false;
}

int check_execution_divergent(){
  int ret_val;
  if (!verify_result("gpu.txt","fpga_simulation.txt")) return 1;
  //if (!verify_result("gpu.txt","fpga.txt")) return 1;
  return 0;
}

int check_performance_divergent(){
    int ret_val;
    if (hardware_enabled){
        std::ifstream ifs("hls_report/solution1/*.rpt");
        
    }
    return ret_val;
}

// change the probability based on update rule
void update_probability(){
      std::vector<int> prob_int;
    int sum = 0;
    for(int i=0;i<prob.size();i++) {
        if(mut[i]){
          prob[i] = prob[i] + 0.05;
        }
        else
        {
          prob[i] = prob[i] - 0.05/(mut.size()-1);
        }
        
        prob_int.push_back(sum);
    }
}

/*save the input if a new edge is covered or maximize a hardware divergence character
return 0 if not interested, return 1 if new coverage, return 2 if new hardware character,
return 3 if both;
*/

int save_if_interest(){
  int ret_val = 0;
  int new_coverage = 0;
  int new_hardware = 0;

  for(int i = 0; i < (1<<16); ++i) {
    if(trace_bits[i] && !total_bits[i]) {
      total_bits[i] = 1;
      new_coverage = 1;
    }
  }

  new_hardware = check_new_hardware();
  
  if(new_coverage && new_hardware){
    update_probability();
    return NEW_BOTH;
  }else if(new_coverage && !new_hardware){
    return NEW_COVERAGE;
  }else if(!new_coverage && new_hardware){
    update_probability();
    return NEW_HARDWARE;
  }

  return NOT_INTEREST;
}

void write_to_test(std::string current_input, int interest){
  
  if(!interest) remove(current_input.c_str());
  else{
    struct queue_entry *q = (struct queue_entry *)malloc(sizeof(queue_entry));
    q->exec_cksum = hash32(trace_bits, MAP_SIZE, HASH_CONST);

    std::string new_name; 
    if(interest == NEW_COVERAGE){
      q->has_new_cov = 1;
      new_name = std::string(current_input) + "_cov";
    }
    else if(interest == NEW_HARDWARE) new_name = std::string(current_input) + "_hd";
    else if(interest == NEW_BOTH){
      q->has_new_cov = 1;
      new_name = std::string(current_input) + "_both";
    }
    rename(current_input.c_str(), new_name.c_str());
    memcpy(q->fname, new_name.c_str(), 256);
    input_queue.push_back(q);
  }
  
}

void write_to_test(std::string current_input){
  std::string new_name = std::string(current_input) + "_crash";
  rename(current_input.c_str(), new_name.c_str());
}

std::vector<std::string> SplitString(std::string &s, const std::string &delimiter) {
	size_t pos = 0;
	std::string token;
	std::vector<std::string> ret;
	while ((pos = s.find(delimiter)) != std::string::npos) {
		token = s.substr(0, pos);
		//std::cout << token << std::endl;
		ret.push_back(token);
		s.erase(0, pos + delimiter.length());
	}
	ret.push_back(s);
	return ret;
}

/*Selective invocation based on the boundaries of input values*/

bool worthy_simulation(std::string input){
  if(hardware_enabled){
    	std::vector<std::string> input_list = SplitString(input,"/n");
			for(auto arg:input_list) {
				if(atoi(arg.c_str()) > input_max) return true;
        else if(atoi(arg.c_str()) < input_min) return true;
        else return false;
			}
  }else{
    return true;
  }
}

/* Fuzzing iterations: randomly select an input, mutate it, run the target
with the mutated input, check the coverage and update input queue */

void fuzzing(char* app, int iteration){

  for(int i = 1; i < iteration; i ++){
    printf("\n**********%d**********\n", i);

    srand(time(0) + rand());
    if (input_queue.size()==0){
      list_dir(out_dir); //TODO: change to input dir of target app 
    }
    int index = rand()%input_queue.size();
        printf("input queue length: %d\n", input_queue.size());
     for(int i = 0; i < input_queue.size(); i++){
       printf("%s\n ", input_queue[i]->fname);
     }

    struct queue_entry* q = input_queue[index];
    std::string current_input = std::string(q->fname);

    std::string mutated_input = mutate(i, current_input);
    std::cout << "running with mutated input: " << mutated_input << std::endl ;
    char mutated[256] = "0";
    strncpy(mutated, mutated_input.c_str(), mutated_input.length() + 1);

    if(worthy_simulation(mutated_input)){
      int crash = run_target(app, mutated);

      if(crash){ //if found crash
        write_to_test(mutated_input);
      }else{  // else check the guidance
        int interest = save_if_interest();
        printf("the current input is interest: %d\n", interest);
        write_to_test(mutated_input, interest);
        }
      }

  }
}


/* Perform dry run of all test cases to confirm that the app is working as
   expected. This is done only for the initial inputs, and only once. */

void perform_dry_run(char* app){
  ACTF("Attempting dry run with '%s'...", app);

  int status = 0;
  memset(trace_bits, 0, MAP_SIZE);

  //char* argv[] = {app, "/Desktop/Heterofuzz/prototype/good-seeds/anyseed", NULL};
  char* argv[] = {app, "/Desktop/Heterofuzz/prototype/matrix-seed/anyseed", NULL};

  child_pid = fork();
  if(child_pid < 0){
    perror("fork error.");
    exit(EXIT_FAILURE);
  }
  
  if(!child_pid){ // This is child process
    printf("This is the child process");
    execv(app, argv);
    *(u32*)trace_bits = EXEC_FAIL_SIG;
    exit(0);
  }

  pid_t ret;
  ret = waitpid(child_pid, &status, 0);
  if(ret < 0){
    perror("wait error");
    exit(EXIT_FAILURE);
  }
  

//  int tb4 = *(u32*)trace_bits;

  u32 ck1 = hash32(trace_bits, MAP_SIZE, HASH_CONST);
  SAYF("check sum of changed bitmap %u\n", ck1);

  // FILE* f = fopen("1.dat", "w");
  // for(int i = 0; i < MAP_SIZE; i++)
  // {
  //   fprintf(f, "%d ", trace_bits[i]);
  // }
  // fclose(f);
  
  //update the checksum of seed input
  input_queue[0]->exec_cksum = ck1;
  input_queue[0]->has_new_cov = 1;

  // update the total coverage
  memcpy(total_bits, trace_bits, sizeof(u8)*(1<<16));

  if (!WIFSTOPPED(status)) child_pid = 0;

  if (WIFEXITED(status))
        printf("child exited normal exit status= %d\n", WEXITSTATUS(status));

    else if (WIFSIGNALED(status))
        printf("child exited abnormal signal number= %d \n", WTERMSIG(status));
    else if (WIFSTOPPED(status))
        printf("child stoped signal number=%d\n", WSTOPSIG(status));

}

static void setup_shm(){

  ACTF("Setting up the shared memory for code coverage...");
  u8* shm_str;

  memset(total_bits, 0, MAP_SIZE);

  shm_id = shmget(IPC_PRIVATE, MAP_SIZE, IPC_CREAT | IPC_EXCL | 0600);
  
  if (shm_id < 0) PFATAL("Failed to creat a shared memory");
  
  shm_str = alloc_printf("%d", shm_id);
  
  setenv(SHM_ENV_VAR, (char*)shm_str, 1);

  ck_free(shm_str);


  trace_bits = (unsigned char*)shmat(shm_id, NULL, 0);
  if (!trace_bits) PFATAL("shmat() failed");
}

/* Main entry point */
//undone: first run + output file in target application + add .sh and figure out path

int main(int argc, char** argv) {

  SAYF(cCYA "differential-testing-fuzz " cBRI VERSION cRST " by <wangjiyuan@cs.ucla.edu>\n");

  memset(in_dir, 0, 256);
  memset(out_dir, 0, 256);
  
  if(argc < 5)  usage(argv[0]);

  memcpy(in_dir, argv[1], strlen(argv[1]));
  memcpy(out_dir, argv[2], strlen(argv[2]));
  max_trials = atoi(argv[3]);


  if (!strcmp(in_dir, out_dir))
    FATAL("Input and output directories can't be the same");


  setup_shm();
  OKF("Shared memory is ready.");
  u32 ck1 = hash32(trace_bits, MAP_SIZE, HASH_CONST);
  SAYF("main cksum %d\n", ck1);
  
  list_dir(in_dir);
  OKF("Input queue initialized with %d seeds.", input_queue.size());
  // for(int i = 0; i < input_queue.size(); i++){
  //   printf("%s\n", input_queue[i]->fname);
  // }


  save_cmdline(argc, argv);
  OKF("Command line saved.");

  
  start_time = get_cur_time();
  OKF("The start time is: %lld", start_time);

 
  OKF("Perform dry run!");
  perform_dry_run(argv[4]);
  

  printf("Fuzzing execution time: %lld\n", end_time-start_time);

  OKF("The binary works well with the seed input.");
  

  OKF("Start fuzzing!");
  fuzzing(argv[4], max_trials);

  end_time = get_cur_time();
  OKF("The end time is: %lld\n", end_time);

  OKF("We're done here. Have a nice day!\n");

  exit(0);

}
