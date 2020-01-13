# 添加调用的 target
# 请查看 BUILD 里面的 name 属性
MODULES := genrule_1 genrule_2
.PHONY: all ${MODULES}

# 
BAZEL := bazel
BUILD := build
# 添加调用 bazel 规则
define RULES_template
$(1):
	$$(BAZEL) $$(BUILD)  $(1)
endef

# 将 RULES_template 扩展称为 对应的 target
$(foreach module,$(MODULES),$(eval $(call RULES_template,$(module))))
# Add whatever should be your default / global target.
all:
	@echo "Default target."

