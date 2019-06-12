require'yaml'

puts "coucou"
#=> 
def parse_yml_from_dir(dir_name)
    Dir[dir_name].each_with_object([]) {|yml_path, acc |  acc << YAML.load_file(yml_path)}
end


def language_from_translation_hash(translation_hash)
    translation_hash.keys.first
end

puts parse_yml_from_dir("test_set/*.yml")

#array_path = Dir["*.yml"]
#puts array_path
#arr =[]

#ficen = YAML.load_file()
#puts ficen.class


#ficen.each_with_object({}) { |k, v| arr <<  YAML.load_file() {k => v } }
#puts arr