# 定义一个函数
def _var_providing_rule_impl(ctx):
  return [
    platform_common.TemplateVariableInfo({
      "FOO": ctx.attr.var_value,
      "CC": ctx.attr.var_value_CC,
      "AR": ctx.attr.var_value_AR,
    })
  ]

# https://docs.bazel.build/versions/master/skylark/rules.html
# 利用 rule函数，生成一个结构体
var_providing_rule = rule(
  implementation = _var_providing_rule_impl,
  attrs = { "var_value": attr.string(),
            "var_value_CC":attr.string(),
            "var_value_AR":attr.string(),
        }
)
