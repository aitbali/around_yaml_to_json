require'yaml'

def parse_yml_from_dir(dir_name)
  Dir[dir_name].each_with_object([]) {|yml_path, acc |  acc << YAML.load_file(yml_path)}
end


def language_from_translation_hash(translation_hash)
  translation_hash.keys.first
end

def get_keys_from_hash(translation_hash)
  arr = []
  translation_hash.each do |key, value|
   arr << key 
   arr.concat(get_keys_from_hash(value)).flatten.compact if value.is_a? Hash
  end.flatten
  arr
end

ary =  parse_yml_from_dir("test_set/*.yml")

p get_keys_from_hash(ary.first)

