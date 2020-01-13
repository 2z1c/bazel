# stage1
这一章节主要是学习**bazel**基础，入门知识。

## genrule
- **genrule**文件夹演示了[genrule](https://docs.bazel.build/versions/master/be/general.html)生成一个新的 **rule**的用法。
函数原型
```bash
genrule(name, srcs, outs, cmd, cmd_bash, cmd_bat, cmd_ps, compatible_with, deprecation, distribs, exec_compatible_with, exec_properties, exec_tools, executable, features, licenses, local, message, output_licenses, output_to_bindir, restricted_to, tags, testonly, toolchains, tools, visibility)
```
根据[Creating a Macro](https://docs.bazel.build/versions/2.0.0/skylark/tutorial-creating-a-macro.html)文章选择了两个例子。查看对应文件夹下面的**Makefile**以调用对应的命令

## toolchains
根据[Creating a Macro](https://docs.bazel.build/versions/2.0.0/skylark/tutorial-creating-a-macro.html)文章中说道，
**toolchains**默认值如下。
```python
toolchains = ["@bazel_tools//tools/cpp:current_cc_toolchain"]
```
现在自己创造一个**toolchains**,请查看 **toolchains**文件夹
- [rules](https://docs.bazel.build/versions/master/skylark/rules.html)
    - A rule defines a series of actions that Bazel performs on inputs to produce a set of outputs
```bash
function rule(implementation, test=False, attrs=None, outputs=None, executable=False, output_to_genfiles=False, fragments=[], host_fragments=[], _skylark_testable=False, toolchains=[], doc='', *, provides=[], exec_compatible_with=[], analysis_test=False, build_setting=None, cfg=None)
```
- [globals](https://docs.bazel.build/versions/master/skylark/lib/globals.html)
    - Objects, functions and modules registered in the global environment.
- [attr](https://docs.bazel.build/versions/master/skylark/lib/attr.html)
    - This is a top-level module for defining the attribute schemas of a rule or aspect. 
- [cc_common](https://docs.bazel.build/versions/master/skylark/lib/cc_common.html)
    - Utilities for C++ compilation, linking, and command line generation.
- [integrating-with-rules-cc](https://docs.bazel.build/versions/master/integrating-with-rules-cc.html)
    - This page describes how to integrate with C++ rules on various levels.
- [toolchains](https://docs.bazel.build/versions/master/toolchains.html)
    - This page describes the toolchain framework – a way for rule authors to decouple their rule logic from platform-based selection of tools.
# 参考资料
- [make-variables](https://docs.bazel.build/versions/master/be/make-variables.html)
- [General Rules](https://docs.bazel.build/versions/master/be/general.html)