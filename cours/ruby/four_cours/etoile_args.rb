def all_args(*args)
  p args
end

all_args           # []
all_args 'foo'     # ['foo']
all_args 'foo', 1  # ['foo', 1]
