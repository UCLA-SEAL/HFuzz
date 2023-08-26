var pipelineJSON={"3":{"nodes":[{"name":"Exit", "id":9, "subtype":"exit", "start":"862.00", "end":"893.00", "details":[{"type":"table", "Max Fanout":"1", "Start Cycle":"862", "Latency":"3", "Exit FIFO Depth":"1024", "Exit FIFO Width":"72", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}, {"name":"Entry", "id":10, "subtype":"entry", "details":[{"type":"table", "Instruction":"Cluster Entry", "Max Fanout":"0", "Start Cycle":"0", "Latency":"0"}], "type":"inst"}, {"name":"arg_V33", "id":11, "subtype":"default", "start":"0.00", "end":"861.00", "details":[{"type":"table", "Instruction":"Input Synchronization for \'arg_V33\'", "Max Fanout":"1", "Start Cycle":"0", "Latency":"861"}], "type":"inst"}, {"name":"arg_V3", "id":12, "subtype":"default", "start":"0.00", "end":"861.00", "details":[{"type":"table", "Instruction":"Input Synchronization for \'arg_V3\'", "Max Fanout":"1", "Start Cycle":"0", "Latency":"861"}], "type":"inst"}, {"name":"Ptr. Comp.", "id":13, "subtype":"default", "start":"861.00", "end":"862.00", "details":[{"type":"table", "Instruction":"Pointer Computation", "Max Fanout":"5", "Start Cycle":"861", "Latency":"1"}], "debug":[[{"filename":"/glob/development-tools/versions/oneapi/2022.3/oneapi/compiler/2022.2.0/linux/bin-llvm/../include/sycl/CL/sycl/accessor.hpp", "line":927}]], "type":"inst"}, {"name":"Ptr. Comp.", "id":14, "subtype":"default", "start":"0.00", "end":"862.00", "details":[{"type":"table", "Instruction":"Pointer Computation", "Max Fanout":"5", "Start Cycle":"0", "Latency":"862"}], "type":"inst"}], "links":[{"from":10, "to":14, "details":[{"type":"table", "Width":"72"}]}, {"from":11, "to":13, "details":[{"type":"table", "Width":"64"}]}, {"from":12, "to":13, "details":[{"type":"table", "Width":"64"}]}, {"from":13, "to":14, "details":[{"type":"table", "Width":"64"}]}, {"from":14, "to":9, "details":[{"type":"table", "Width":"64"}]}]}, "4":{"nodes":[{"name":"Exit", "id":15, "subtype":"exit", "start":"2.00", "end":"33.00", "details":[{"type":"table", "Max Fanout":"1", "Start Cycle":"2", "Latency":"3", "Exit FIFO Depth":"512", "Exit FIFO Width":"136", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}, {"name":"Entry", "id":16, "subtype":"entry", "details":[{"type":"table", "Instruction":"Cluster Entry", "Max Fanout":"0", "Start Cycle":"0", "Latency":"0"}], "type":"inst"}, {"name":"arg_V16", "id":17, "subtype":"default", "start":"0.00", "end":"1.00", "details":[{"type":"table", "Instruction":"Input Synchronization for \'arg_V16\'", "Max Fanout":"1", "Start Cycle":"0", "Latency":"1"}], "type":"inst"}, {"name":"arg_V1", "id":18, "subtype":"default", "start":"0.00", "end":"1.00", "details":[{"type":"table", "Instruction":"Input Synchronization for \'arg_V1\'", "Max Fanout":"1", "Start Cycle":"0", "Latency":"1"}], "type":"inst"}, {"name":"Ptr. Comp.", "id":19, "subtype":"default", "start":"1.00", "end":"2.00", "details":[{"type":"table", "Instruction":"Pointer Computation", "Max Fanout":"9", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"/glob/development-tools/versions/oneapi/2022.3/oneapi/compiler/2022.2.0/linux/bin-llvm/../include/sycl/CL/sycl/accessor.hpp", "line":927}]], "type":"inst"}, {"name":"arg_V29", "id":20, "subtype":"default", "start":"0.00", "end":"1.00", "details":[{"type":"table", "Instruction":"Input Synchronization for \'arg_V29\'", "Max Fanout":"1", "Start Cycle":"0", "Latency":"1"}], "type":"inst"}, {"name":"arg_V2", "id":21, "subtype":"default", "start":"0.00", "end":"1.00", "details":[{"type":"table", "Instruction":"Input Synchronization for \'arg_V2\'", "Max Fanout":"1", "Start Cycle":"0", "Latency":"1"}], "type":"inst"}, {"name":"Ptr. Comp.", "id":22, "subtype":"default", "start":"1.00", "end":"2.00", "details":[{"type":"table", "Instruction":"Pointer Computation", "Max Fanout":"9", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"/glob/development-tools/versions/oneapi/2022.3/oneapi/compiler/2022.2.0/linux/bin-llvm/../include/sycl/CL/sycl/accessor.hpp", "line":927}]], "type":"inst"}, {"name":"Ptr. Comp.", "id":23, "subtype":"default", "start":"0.00", "end":"2.00", "details":[{"type":"table", "Instruction":"Pointer Computation", "Max Fanout":"9", "Start Cycle":"0", "Latency":"2"}], "type":"inst"}, {"name":"Ptr. Comp.", "id":24, "subtype":"default", "start":"0.00", "end":"2.00", "details":[{"type":"table", "Instruction":"Pointer Computation", "Max Fanout":"9", "Start Cycle":"0", "Latency":"2"}], "type":"inst"}], "links":[{"from":16, "to":23, "details":[{"type":"table", "Width":"72"}]}, {"from":16, "to":24, "details":[{"type":"table", "Width":"72"}]}, {"from":17, "to":19, "details":[{"type":"table", "Width":"64"}]}, {"from":18, "to":19, "details":[{"type":"table", "Width":"64"}]}, {"from":19, "to":23, "details":[{"type":"table", "Width":"64"}]}, {"from":20, "to":22, "details":[{"type":"table", "Width":"64"}]}, {"from":21, "to":22, "details":[{"type":"table", "Width":"64"}]}, {"from":22, "to":24, "details":[{"type":"table", "Width":"64"}]}, {"from":23, "to":15, "details":[{"type":"table", "Width":"64"}]}, {"from":24, "to":15, "details":[{"type":"table", "Width":"64"}]}]}, "7":{"nodes":[{"name":"Exit", "id":25, "subtype":"exit", "start":"862.00", "end":"893.00", "details":[{"type":"table", "Max Fanout":"1", "Start Cycle":"862", "Latency":"3", "Exit FIFO Depth":"512", "Exit FIFO Width":"72", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}, {"name":"Entry", "id":26, "subtype":"entry", "details":[{"type":"table", "Instruction":"Cluster Entry", "Max Fanout":"0", "Start Cycle":"854", "Latency":"0"}], "type":"inst"}, {"name":"*", "id":27, "subtype":"default", "start":"854.00", "end":"861.00", "details":[{"type":"table", "Instruction":"32-bit Integer Multiply", "Max Fanout":"4", "Start Cycle":"854", "Latency":"7", "Implementation Preference":"Default DSP usage"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/Complex.hpp", "line":40}]], "type":"inst"}, {"name":"*", "id":28, "subtype":"default", "start":"854.00", "end":"861.00", "details":[{"type":"table", "Instruction":"32-bit Integer Multiply", "Max Fanout":"4", "Start Cycle":"854", "Latency":"7", "Implementation Preference":"Default DSP usage"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/Complex.hpp", "line":40}]], "type":"inst"}, {"name":"-", "id":29, "subtype":"default", "start":"862.00", "end":"862.00", "details":[{"type":"table", "Instruction":"32-bit Integer Subtract", "Max Fanout":"1", "Start Cycle":"862", "Latency":"0"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/Complex.hpp", "line":40}]], "type":"inst"}, {"name":"*", "id":30, "subtype":"default", "start":"854.00", "end":"861.00", "details":[{"type":"table", "Instruction":"32-bit Integer Multiply", "Max Fanout":"4", "Start Cycle":"854", "Latency":"7", "Implementation Preference":"Default DSP usage"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/Complex.hpp", "line":41}]], "type":"inst"}, {"name":"*", "id":31, "subtype":"default", "start":"854.00", "end":"861.00", "details":[{"type":"table", "Instruction":"32-bit Integer Multiply", "Max Fanout":"4", "Start Cycle":"854", "Latency":"7", "Implementation Preference":"Default DSP usage"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/Complex.hpp", "line":41}]], "type":"inst"}, {"name":"+", "id":32, "subtype":"default", "start":"862.00", "end":"862.00", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Max Fanout":"1", "Start Cycle":"862", "Latency":"0"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/Complex.hpp", "line":41}]], "type":"inst"}], "links":[{"from":26, "to":30, "details":[{"type":"table", "Width":"136"}]}, {"from":26, "to":27, "details":[{"type":"table", "Width":"136"}]}, {"from":26, "to":31, "details":[{"type":"table", "Width":"136"}]}, {"from":26, "to":28, "details":[{"type":"table", "Width":"136"}]}, {"from":27, "to":29, "details":[{"type":"table", "Width":"32"}]}, {"from":28, "to":29, "details":[{"type":"table", "Width":"32"}]}, {"from":29, "to":25, "details":[{"type":"table", "Width":"32"}]}, {"from":30, "to":32, "details":[{"type":"table", "Width":"32"}]}, {"from":31, "to":32, "details":[{"type":"table", "Width":"32"}]}, {"from":32, "to":25, "details":[{"type":"table", "Width":"32"}]}]}};
var treeJSON={"nodes":[{"name":"\'lambda\'(auto)", "id":1, "type":"kernel", "children":[{"name":"\'lambda\'(auto).B0", "id":2, "type":"bb", "children":[{"name":"Cluster 0", "id":3, "type":"cluster"}, {"name":"Cluster 1", "id":4, "type":"cluster"}, {"name":"Cluster 2", "id":7, "type":"cluster"}]}]}], "links":[]};
var new_lmvJSON={"nodes":[{"name":"\'lambda\'(auto)", "id":40, "type":"kernel", "children":[{"name":"On-chip Memory", "id":41, "type":"memtype", "children":[{"name":"Unknown Name #0", "id":42, "details":[{"type":"table", "Declared at":[{"type":"text", "text":"%L", "links":[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/complex_mult_nopipe_fuzz.cpp", "line":"162"}]}], "Additional information":"This variable is carried through the pipeline in registers (rather than being stored in RAM)"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/complex_mult_nopipe_fuzz.cpp", "line":162}]], "type":"reg"}, {"name":"GlobalId", "id":43, "details":[{"type":"table", "Declared at":[{"type":"text", "text":"%L", "links":[{"filename":"/glob/development-tools/versions/oneapi/2022.3/oneapi/compiler/2022.2.0/linux/bin-llvm/../include/sycl/CL/sycl/detail/helpers.hpp", "line":"153"}]}], "Additional information":"This variable is carried through the pipeline in registers (rather than being stored in RAM)"}], "debug":[[{"filename":"/glob/development-tools/versions/oneapi/2022.3/oneapi/compiler/2022.2.0/linux/bin-llvm/../include/sycl/CL/sycl/detail/helpers.hpp", "line":153}]], "type":"reg"}, {"name":"GlobalSize", "id":44, "details":[{"type":"table", "Declared at":[{"type":"text", "text":"%L", "links":[{"filename":"/glob/development-tools/versions/oneapi/2022.3/oneapi/compiler/2022.2.0/linux/bin-llvm/../include/sycl/CL/sycl/detail/helpers.hpp", "line":"154"}]}], "Additional information":"This variable is carried through the pipeline in registers (rather than being stored in RAM)"}], "debug":[[{"filename":"/glob/development-tools/versions/oneapi/2022.3/oneapi/compiler/2022.2.0/linux/bin-llvm/../include/sycl/CL/sycl/detail/helpers.hpp", "line":154}]], "type":"reg"}, {"name":"GlobalOffset", "id":45, "details":[{"type":"table", "Declared at":[{"type":"text", "text":"%L", "links":[{"filename":"/glob/development-tools/versions/oneapi/2022.3/oneapi/compiler/2022.2.0/linux/bin-llvm/../include/sycl/CL/sycl/detail/helpers.hpp", "line":"155"}]}], "Additional information":"This variable is carried through the pipeline in registers (rather than being stored in RAM)"}], "debug":[[{"filename":"/glob/development-tools/versions/oneapi/2022.3/oneapi/compiler/2022.2.0/linux/bin-llvm/../include/sycl/CL/sycl/detail/helpers.hpp", "line":155}]], "type":"reg"}]}]}], "links":[]};
var systemJSON={};
var blockJSON={"2":{"nodes":[{"name":"Cluster 0", "id":3, "start":"0.00", "end":"893.00", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_entry_ztszz13dpcppparallelrn2cl4sycl5queueerst6vectori8complex2sais4_ees7_s7_rs3_iisaiieeenkulrt_e_clins0_7handlereeedasc_eulsb_e_s_c0_enter_k0_ztszz13dpcppparallelrn2cl4sycl5queueerst6vectori8complex2sais4_ees7_s7_rs3_iisaiieeenkulrt_e_clins0_56_1gr", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"0", "Cluster Latency":"893"}], "type":"cluster", "children":[{"name":"Logic", "id":34, "subtype":"entry", "details":[{"type":"table", "Cluster Logic Start Cycle":"0", "Cluster Logic Latency":"862"}], "type":"inst"}, {"name":"Exit", "id":35, "subtype":"exit", "details":[{"type":"table", "Max Fanout":"1", "Start Cycle":"862", "Latency":"3", "Exit FIFO Depth":"1024", "Exit FIFO Width":"72", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}]}, {"name":"Cluster 1", "id":4, "start":"0.00", "end":"33.00", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c1_in_entry_ztszz13dpcppparallelrn2cl4sycl5queueerst6vectori8complex2sais4_ees7_s7_rs3_iisaiieeenkulrt_e_clins0_7handlereeedasc_eulsb_e_s_c1_enter_k0_ztszz13dpcppparallelrn2cl4sycl5queueerst6vectori8complex2sais4_ees7_s7_rs3_iisaiieeenkulrt_e_clins0_56_4gr", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"0", "Cluster Latency":"33"}], "type":"cluster", "children":[{"name":"Logic", "id":36, "subtype":"entry", "details":[{"type":"table", "Cluster Logic Start Cycle":"0", "Cluster Logic Latency":"2"}], "type":"inst"}, {"name":"Exit", "id":37, "subtype":"exit", "details":[{"type":"table", "Max Fanout":"1", "Start Cycle":"2", "Latency":"3", "Exit FIFO Depth":"512", "Exit FIFO Width":"136", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}]}, {"name":"Cluster 2", "id":7, "start":"854.00", "end":"893.00", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c2_in_entry_ztszz13dpcppparallelrn2cl4sycl5queueerst6vectori8complex2sais4_ees7_s7_rs3_iisaiieeenkulrt_e_clins0_7handlereeedasc_eulsb_e_s_c2_enter_k0_ztszz13dpcppparallelrn2cl4sycl5queueerst6vectori8complex2sais4_ees7_s7_rs3_iisaiieeenkulrt_e_clins0_56_9gr", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"854", "Cluster Latency":"39"}], "type":"cluster", "children":[{"name":"Logic", "id":38, "subtype":"entry", "details":[{"type":"table", "Cluster Logic Start Cycle":"854", "Cluster Logic Latency":"8"}], "type":"inst"}, {"name":"Exit", "id":39, "subtype":"exit", "details":[{"type":"table", "Max Fanout":"1", "Start Cycle":"862", "Latency":"3", "Exit FIFO Depth":"512", "Exit FIFO Width":"72", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}]}, {"name":"LD", "id":5, "start":"33.00", "end":"854.00", "subtype":"load/store", "details":[{"type":"table", "Instruction":"Load", "Width":"64 bits", "LSU Style":"Burst-coalesced", "Stall-free":"No", "Global Memory":"Yes", "Max Fanout":"2", "Start Cycle":"33", "Latency":"821"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/Complex.hpp", "line":40}]], "type":"inst"}, {"name":"LD", "id":6, "start":"33.00", "end":"854.00", "subtype":"load/store", "details":[{"type":"table", "Instruction":"Load", "Width":"64 bits", "LSU Style":"Burst-coalesced", "Stall-free":"No", "Global Memory":"Yes", "Max Fanout":"2", "Start Cycle":"33", "Latency":"821"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/Complex.hpp", "line":40}]], "type":"inst"}, {"name":"ST", "id":8, "start":"893.00", "end":"957.00", "subtype":"load/store", "details":[{"type":"table", "Instruction":"Store", "Width":"64 bits", "LSU Style":"Burst-coalesced", "Stall-free":"No", "Global Memory":"Yes", "Max Fanout":"1", "Start Cycle":"893", "Latency":"64"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/complex_mult_nopipe_fuzz.cpp", "line":165}]], "type":"inst"}], "links":[{"from":34, "to":35}, {"from":36, "to":37}, {"from":38, "to":39}, {"from":5, "to":38, "details":[{"type":"table", "Width":"64"}]}, {"from":37, "to":5, "details":[{"type":"table", "Width":"136"}]}, {"from":6, "to":38, "details":[{"type":"table", "Width":"64"}]}, {"from":37, "to":6, "details":[{"type":"table", "Width":"136"}]}, {"from":35, "to":8, "details":[{"type":"table", "Width":"72"}]}, {"from":39, "to":8, "details":[{"type":"table", "Width":"72"}]}]}};
var scheduleJSON={"1":{"nodes":[{"name":"\'lambda\'(auto).B0", "id":2, "start":"0", "end":"957", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"Cluster 1", "id":4, "start":"0", "end":"33", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c1_in_entry_ztszz13dpcppparallelrn2cl4sycl5queueerst6vectori8complex2sais4_ees7_s7_rs3_iisaiieeenkulrt_e_clins0_7handlereeedasc_eulsb_e_s_c1_enter_k0_ztszz13dpcppparallelrn2cl4sycl5queueerst6vectori8complex2sais4_ees7_s7_rs3_iisaiieeenkulrt_e_clins0_56_4gr", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"0", "Cluster Latency":"33"}], "type":"cluster", "children":[{"name":"arg_V16", "id":17, "start":"0", "end":"1", "details":[{"type":"table", "Instruction":"Input Synchronization for \'arg_V16\'", "Max Fanout":"1", "Start Cycle":"0", "Latency":"1"}], "type":"inst"}, {"name":"arg_V1", "id":18, "start":"0", "end":"1", "details":[{"type":"table", "Instruction":"Input Synchronization for \'arg_V1\'", "Max Fanout":"1", "Start Cycle":"0", "Latency":"1"}], "type":"inst"}, {"name":"Ptr. Comp.", "id":19, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Pointer Computation", "Max Fanout":"9", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"/glob/development-tools/versions/oneapi/2022.3/oneapi/compiler/2022.2.0/linux/bin-llvm/../include/sycl/CL/sycl/accessor.hpp", "line":927}]], "type":"inst"}, {"name":"Ptr. Comp.", "id":23, "start":"0", "end":"2", "details":[{"type":"table", "Instruction":"Pointer Computation", "Max Fanout":"9", "Start Cycle":"0", "Latency":"2"}], "type":"inst"}, {"name":"arg_V29", "id":20, "start":"0", "end":"1", "details":[{"type":"table", "Instruction":"Input Synchronization for \'arg_V29\'", "Max Fanout":"1", "Start Cycle":"0", "Latency":"1"}], "type":"inst"}, {"name":"arg_V2", "id":21, "start":"0", "end":"1", "details":[{"type":"table", "Instruction":"Input Synchronization for \'arg_V2\'", "Max Fanout":"1", "Start Cycle":"0", "Latency":"1"}], "type":"inst"}, {"name":"Ptr. Comp.", "id":22, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Pointer Computation", "Max Fanout":"9", "Start Cycle":"1", "Latency":"1"}], "debug":[[{"filename":"/glob/development-tools/versions/oneapi/2022.3/oneapi/compiler/2022.2.0/linux/bin-llvm/../include/sycl/CL/sycl/accessor.hpp", "line":927}]], "type":"inst"}, {"name":"Ptr. Comp.", "id":24, "start":"0", "end":"2", "details":[{"type":"table", "Instruction":"Pointer Computation", "Max Fanout":"9", "Start Cycle":"0", "Latency":"2"}], "type":"inst"}, {"name":"Exit", "id":15, "start":"2", "end":"33", "details":[{"type":"table", "Max Fanout":"1", "Start Cycle":"2", "Latency":"3", "Exit FIFO Depth":"512", "Exit FIFO Width":"136", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}]}, {"name":"LD", "id":6, "start":"33", "end":"854", "details":[{"type":"table", "Instruction":"Load", "Width":"64 bits", "LSU Style":"Burst-coalesced", "Stall-free":"No", "Global Memory":"Yes", "Max Fanout":"2", "Start Cycle":"33", "Latency":"821"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/Complex.hpp", "line":40}]], "type":"inst"}, {"name":"LD", "id":5, "start":"33", "end":"854", "details":[{"type":"table", "Instruction":"Load", "Width":"64 bits", "LSU Style":"Burst-coalesced", "Stall-free":"No", "Global Memory":"Yes", "Max Fanout":"2", "Start Cycle":"33", "Latency":"821"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/Complex.hpp", "line":40}]], "type":"inst"}, {"name":"Cluster 2", "id":7, "start":"854", "end":"893", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c2_in_entry_ztszz13dpcppparallelrn2cl4sycl5queueerst6vectori8complex2sais4_ees7_s7_rs3_iisaiieeenkulrt_e_clins0_7handlereeedasc_eulsb_e_s_c2_enter_k0_ztszz13dpcppparallelrn2cl4sycl5queueerst6vectori8complex2sais4_ees7_s7_rs3_iisaiieeenkulrt_e_clins0_56_9gr", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"854", "Cluster Latency":"39"}], "type":"cluster", "children":[{"name":"*", "id":28, "start":"854", "end":"861", "details":[{"type":"table", "Instruction":"32-bit Integer Multiply", "Max Fanout":"4", "Start Cycle":"854", "Latency":"7", "Implementation Preference":"Default DSP usage"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/Complex.hpp", "line":40}]], "type":"inst"}, {"name":"*", "id":31, "start":"854", "end":"861", "details":[{"type":"table", "Instruction":"32-bit Integer Multiply", "Max Fanout":"4", "Start Cycle":"854", "Latency":"7", "Implementation Preference":"Default DSP usage"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/Complex.hpp", "line":41}]], "type":"inst"}, {"name":"*", "id":27, "start":"854", "end":"861", "details":[{"type":"table", "Instruction":"32-bit Integer Multiply", "Max Fanout":"4", "Start Cycle":"854", "Latency":"7", "Implementation Preference":"Default DSP usage"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/Complex.hpp", "line":40}]], "type":"inst"}, {"name":"-", "id":29, "start":"862", "end":"862", "details":[{"type":"table", "Instruction":"32-bit Integer Subtract", "Max Fanout":"1", "Start Cycle":"862", "Latency":"0"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/Complex.hpp", "line":40}]], "type":"inst"}, {"name":"*", "id":30, "start":"854", "end":"861", "details":[{"type":"table", "Instruction":"32-bit Integer Multiply", "Max Fanout":"4", "Start Cycle":"854", "Latency":"7", "Implementation Preference":"Default DSP usage"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/Complex.hpp", "line":41}]], "type":"inst"}, {"name":"+", "id":32, "start":"862", "end":"862", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Max Fanout":"1", "Start Cycle":"862", "Latency":"0"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/Complex.hpp", "line":41}]], "type":"inst"}, {"name":"Exit", "id":25, "start":"862", "end":"893", "details":[{"type":"table", "Max Fanout":"1", "Start Cycle":"862", "Latency":"3", "Exit FIFO Depth":"512", "Exit FIFO Width":"72", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}]}, {"name":"Cluster 0", "id":3, "start":"0", "end":"893", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_entry_ztszz13dpcppparallelrn2cl4sycl5queueerst6vectori8complex2sais4_ees7_s7_rs3_iisaiieeenkulrt_e_clins0_7handlereeedasc_eulsb_e_s_c0_enter_k0_ztszz13dpcppparallelrn2cl4sycl5queueerst6vectori8complex2sais4_ees7_s7_rs3_iisaiieeenkulrt_e_clins0_56_1gr", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"0", "Cluster Latency":"893"}], "type":"cluster", "children":[{"name":"arg_V33", "id":11, "start":"0", "end":"861", "details":[{"type":"table", "Instruction":"Input Synchronization for \'arg_V33\'", "Max Fanout":"1", "Start Cycle":"0", "Latency":"861"}], "type":"inst"}, {"name":"arg_V3", "id":12, "start":"0", "end":"861", "details":[{"type":"table", "Instruction":"Input Synchronization for \'arg_V3\'", "Max Fanout":"1", "Start Cycle":"0", "Latency":"861"}], "type":"inst"}, {"name":"Ptr. Comp.", "id":13, "start":"861", "end":"862", "details":[{"type":"table", "Instruction":"Pointer Computation", "Max Fanout":"5", "Start Cycle":"861", "Latency":"1"}], "debug":[[{"filename":"/glob/development-tools/versions/oneapi/2022.3/oneapi/compiler/2022.2.0/linux/bin-llvm/../include/sycl/CL/sycl/accessor.hpp", "line":927}]], "type":"inst"}, {"name":"Ptr. Comp.", "id":14, "start":"0", "end":"862", "details":[{"type":"table", "Instruction":"Pointer Computation", "Max Fanout":"5", "Start Cycle":"0", "Latency":"862"}], "type":"inst"}, {"name":"Exit", "id":9, "start":"862", "end":"893", "details":[{"type":"table", "Max Fanout":"1", "Start Cycle":"862", "Latency":"3", "Exit FIFO Depth":"1024", "Exit FIFO Width":"72", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}]}, {"name":"ST", "id":8, "start":"893", "end":"957", "details":[{"type":"table", "Instruction":"Store", "Width":"64 bits", "LSU Style":"Burst-coalesced", "Stall-free":"No", "Global Memory":"Yes", "Max Fanout":"1", "Start Cycle":"893", "Latency":"64"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/complex_mult_nopipe_fuzz.cpp", "line":165}]], "type":"inst"}]}], "links":[{"from":4, "to":5}, {"from":4, "to":6}, {"from":17, "to":19}, {"from":18, "to":19}, {"from":19, "to":23}, {"from":23, "to":15}, {"from":20, "to":22}, {"from":21, "to":22}, {"from":22, "to":24}, {"from":24, "to":15}, {"from":6, "to":7}, {"from":5, "to":7}, {"from":7, "to":8}, {"from":28, "to":29}, {"from":31, "to":32}, {"from":27, "to":29}, {"from":29, "to":25}, {"from":30, "to":32}, {"from":32, "to":25}, {"from":3, "to":8}, {"from":11, "to":13}, {"from":12, "to":13}, {"from":13, "to":14}, {"from":14, "to":9}]}};
var bottleneckJSON={"bottlenecks":[]};
var gmvJSON={"nodes":[{"name":"DDR", "id":46, "details":[{"type":"table", "Interleaving":"Yes", "Interleave Size":"4096 bytes", "Channels":"4 channels", "Maximum bandwidth the BSP can deliver":"76800.00 MB/s<br><small><i> Note: Realistic maximum bandwidth is about 90% of the above due to loss from interconnect and memory controller.</i></small>", "Channel DDR Width (bits)":"512, 512, 512, 512"}], "type":"memsys", "children":[{"name":"channel 0", "id":48, "type":"bb"}, {"name":"channel 1", "id":49, "type":"bb"}, {"name":"channel 2", "id":50, "type":"bb"}, {"name":"channel 3", "id":51, "type":"bb"}]}, {"name":"Memory Controller", "id":47, "parent":"46", "bw":"76800.00", "num_channels":"4", "interleave":"1", "details":[{"type":"table", "Maximum bandwidth the BSP can deliver":"76800.00 MB/s<br><small><i> Note: Realistic maximum bandwidth is about 90% of the above due to loss from interconnect and memory controller.</i></small>"}], "type":"bb"}, {"name":"Global Memory Interconnect", "id":52, "parent":"46", "type":"bb", "children":[{"name":"SHARE", "id":53, "type":"arb"}, {"name":"Write Interconnect", "id":56, "details":[{"type":"table", "Name":"DDR", "Interconnect Style":"ring", "Writes":"1", "User specified force-single-store-ring flag":"False", "Store Rings":"4"}], "type":"bb"}, {"name":"Read Interconnect", "id":54, "details":[{"type":"table", "Name":"DDR", "Interconnect Style":"ring", "Reads":"2"}], "type":"bb"}, {"name":"Read Interconnect Router", "id":55, "details":[{"type":"table", "User specified num-reorder flag":"Unset"}], "type":"memsys", "children":[{"name":"Bus 0", "id":62, "type":"memsys"}, {"name":"Bus 1", "id":63, "type":"memsys"}, {"name":"Bus 2", "id":64, "type":"memsys"}, {"name":"Bus 3", "id":65, "type":"memsys"}]}]}, {"name":"Global Memory Loads", "id":57, "parent":"46", "type":"bb", "children":[{"name":"LD", "id":58, "kwidth":"64", "mwidth":"512", "details":[{"type":"table", "Start Cycle":"33", "Latency":"821 cycles", "Width":"64 bits", "DDR Width":"512 bits", "Uses Caching":"No", "LSU Style":"BURST-COALESCED", "Kernel":"\'lambda\'(auto)"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/Complex.hpp", "line":40}]], "type":"inst"}, {"name":"LD", "id":59, "kwidth":"64", "mwidth":"512", "details":[{"type":"table", "Start Cycle":"33", "Latency":"821 cycles", "Width":"64 bits", "DDR Width":"512 bits", "Uses Caching":"No", "LSU Style":"BURST-COALESCED", "Kernel":"\'lambda\'(auto)"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/Complex.hpp", "line":40}]], "type":"inst"}]}, {"name":"Global Memory Stores", "id":60, "parent":"46", "type":"bb", "children":[{"name":"ST", "id":61, "kwidth":"64", "mwidth":"512", "details":[{"type":"table", "Start Cycle":"893", "Latency":"64 cycles", "Width":"64 bits", "DDR Width":"512 bits", "Uses Write Ack":"No", "LSU Style":"BURST-COALESCED", "Kernel":"\'lambda\'(auto)"}], "debug":[[{"filename":"/home/u93631/A10_oneapi/complex_mult/src/complex_mult_nopipe_fuzz.cpp", "line":165}]], "type":"inst"}]}], "links":[{"from":48, "to":47}, {"from":47, "to":48}, {"from":49, "to":47}, {"from":47, "to":49}, {"from":50, "to":47}, {"from":47, "to":50}, {"from":51, "to":47}, {"from":47, "to":51}, {"from":54, "to":53}, {"from":56, "to":53}, {"from":53, "to":47}, {"from":58, "to":54}, {"from":59, "to":54}, {"from":61, "to":56}, {"from":47, "to":62}, {"from":47, "to":63}, {"from":47, "to":64}, {"from":47, "to":65}, {"from":62, "to":58, "reverse":1}, {"from":63, "to":59, "reverse":1}]};