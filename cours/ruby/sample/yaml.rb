require 'yaml'

foo = ['bar', 'baz', {:hello => 'foo'}]
File.open('yaml.yaml', 'w+') do |f|
  YAML.dump(foo, f)
end
ok = YAML.load_file('yaml.yaml')
p ok
