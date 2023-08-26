#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 3/5/22 10:27 AM
# @File    : ASTLocate.py

# TODO snapshot undone for hang

import sys, os
import clang.cindex
import hardcoded_channel_pattern
import rewrite
import re


def _get_binop_operator(cursor, target_operator):
    """
    Returns the operator token of a binary operator cursor.

    :param cursor: A cursor of kind BINARY_OPERATOR.
    :return:       The token object containing the actual operator or None.
    """
    children = list(cursor.get_children())
    operator_min_begin = (children[0].location.line,
                          children[0].location.column)
    operator_max_end = (children[1].location.line,
                        children[1].location.column)

    for token in cursor.get_tokens():
        if (operator_min_begin < (token.extent.start.line,
                                  token.extent.start.column) and
                operator_max_end > (token.extent.end.line,
                                    token.extent.end.column) and (token.spelling == target_operator)):
            return token

    return None  # pragma: no cover


def traverse(node):  # only for overflow

    # Recurse for children of this node
    for child in node.get_children():
        traverse(child)

    # Add the node to function_declarations
    if node.kind == clang.cindex.CursorKind.FUNCTION_DECL:
        function_declarations.append(node)

    if node.kind == clang.cindex.CursorKind.VAR_DECL:
        print('Found %s  type=%s [line=%s, col=%s]' % (
            node.spelling, node.kind, node.location.line, node.location.column))
        variable_kernel.append(node)  # place to add "channel read"

    if node.kind == clang.cindex.CursorKind.DECL_REF_EXPR:
        # change to "sum" should be the target variable, place to add kernel channel write. However,
        # seems AST compilation is impossible to get into kernel code
        print('Found %s  type=%s [line=%s, col=%s]' % (
            node.spelling, node.kind, node.location.line, node.location.column))
        target_variable_location.append(node)


if __name__ == '__main__':
    # Find out the c++ parser
    function_calls = []  # List of AST node objects that are function calls
    function_declarations = []  # List of AST node objects that are function declarations
    original_code_path = "example_program/overflow11.cpp"
    flag_job = False
    new_code = []
    target_variable_location = []
    variable_kernel = []
    f = open(original_code_path, "r")
    wf = open("example_program/kernel_code.cpp", "w")
    for i, line in enumerate(f):
        if flag_job:
            new_code.append(line)
            wf.write(line)
        if line.find("h.") > 0:
            print(line)
            new_code.append("int function" + str(i) + "(){")
            wf.write("int function" + str(i) + "(){")
            flag_job = True
        if line.find("});") > 0:
            flag_job = False
            new_code.append("}")
            wf.write("}")
    wf.close()
    f.close()
    # Traverse the AST tree
    # Tell clang.cindex where libclang.dylib is
    clang.cindex.Config.set_library_path(
        "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/")
    index = clang.cindex.Index.create()
    # original_code_path = "example_program/arraysize1.cpp"
    target_path = "example_program/inserted_kernel.cpp"
    # Generate AST from filepath passed in the command line
    tu = index.parse("example_program/kernel_code.cpp")

    root = tu.cursor  # Get the root of the AST
    traverse(root)

    pipe = []
    wf = open(target_path, "w")
    for node in variable_kernel:
        wf.write("DeviceToHost" + node.spelling + "_Max = DeviceToHostSideChannel" \
                                                  "<DeviceToHostSideChannelID, int, true, 8>;\n")
        wf.write("DeviceToHost" + node.spelling + "_Min = DeviceToHostSideChannel" \
                                                  "<DeviceToHostSideChannelID, int, true, 8>;\n")
        pipe.append("DeviceToHost" + node.spelling + "_Max = DeviceToHostSideChannel" \
                                                     "<DeviceToHostSideChannelID, int, true, 8>;\n")
        pipe.append("DeviceToHost" + node.spelling + "_Min = DeviceToHostSideChannel" \
                                                     "<DeviceToHostSideChannelID, int, true, 8>;\n")

    f = open("example_program/kernel_code.cpp", "r")
    for i, line in enumerate(f):
        flag_node = True
        for node in target_variable_location:
            if node.location.line == i:
                wf.write(
                    "if (" + node.spelling + "_max<" + node.spelling + "){" + node.spelling + "_min=" + node.spelling + ";}")
                wf.write(
                    "if (" + node.spelling + "_min>" + node.spelling + "){" + node.spelling + "_min=" + node.spelling + ";}")
                flag_node = False
        for node in variable_kernel:
            if node.location.line == i:
                wf.write(
                    "if (" + node.spelling + "_max<" + node.spelling + "){" + node.spelling + "_min=" + node.spelling + ";}")
                wf.write(
                    "if (" + node.spelling + "_min>" + node.spelling + "){" + node.spelling + "_min=" + node.spelling + ";}")
                flag_node = False
        if flag_node:
            wf.write(line)
    wf.close()
    f.close()
    # Print the contents of function_calls and function_declarations
    # print(outside_kernel)
    # print(inside_kernel_assert_location)

# rewrite.rewrite(line_number_queue, "example_program/overflow1.cpp", "example_program/overflow11.cpp", trial)
# rewrite.rewrite(line_number_queue, "example_program/arraysize1.cpp", "example_program/arraysize2.cpp", trial)
# rewrite.rewrite(line_number_queue, "example_program/overflow11.cpp", "example_program/channel1.cpp", trial)

# kernel_start[0] + 2 should be q.submit
