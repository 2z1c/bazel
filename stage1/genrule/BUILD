load(":miniature.bzl", "miniature")

genrule(
    name = "logo_miniature",
    srcs = ["test.txt"],
    outs = ["test1.txt"],
    # $< 类似与 makefile 里面的参数
    # $@ 类似于 Makefile 里面的 target
    cmd = "cat $< > $@",
)

cc_binary(
    name = "genrule_1", # 此目标调用的时候，会调用 logo_miniature target，
    srcs = ["my_app.cc"],
    data = [":logo_miniature"],
)

# 传入两个参数
# name 留做别人调用的时候握有
# 
miniature(
    name = "logo_miniature_1",
    src = "test.txt", 
)

cc_binary(
    name = "genrule_2", # 此目标调用的时候，会调用 logo_miniature target 对应的 规则(rule?)
    srcs = ["my_app.cc"],
    data = [":logo_miniature_1"],
)