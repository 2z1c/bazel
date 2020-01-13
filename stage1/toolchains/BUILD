# https://docs.bazel.build/versions/master/be/make-variables.html
# 加载 defs.bzl 
load(":defs.bzl", "var_providing_rule")

# 这个函数是由 rule 函数生成
var_providing_rule(
  name = "set_foo_to_bar",
  var_value = "bar",
  var_value_CC = "arm-gcc", # 传入的参数
  # var_value_AR = "arm-ar",  如果不传入的话也没有事
)

genrule(
  name = "toolchains_1",
  srcs = [],
  outs = ["toolchains_1.out"],
  # 将会调用这个命令
  # FOO 这个参数是在 toolchains 里面传递出来的。
  cmd = "echo FOO is equal to $(FOO)!  $(CC) $(AR)> $@",
  toolchains = [":set_foo_to_bar"]
)

# 指定当前的
genrule(
  name = "toolchains_2",
  srcs = [],
  outs = ["toolchains_2.out"],
  # 将会调用这个命令
  # FOO 
  # 
  cmd = "echo FOO is equal to   $(CC) $(AR) $(_cc_toolchain)> $@",
  toolchains = ["@bazel_tools//tools/cpp:current_cc_toolchain"],
)