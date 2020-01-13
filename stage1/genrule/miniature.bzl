def miniature(name, src, **kwargs):
  """Create a miniature of the src image.

  The generated file is prefixed with 'small_'.
  """
  # To call a genrule, or any other native rule, use native.
  native.genrule(
    name = name,
    srcs = [src],
    outs = ["small_" + src], # 在这里固定文件，输入文件加前缀
    cmd = "cat $< >> $@",
    **kwargs
  )