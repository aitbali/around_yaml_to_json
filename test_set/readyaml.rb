require'yaml'

array_path = Dir["*.yml"]
puts array_path
arr =[]

ficen = YAML.load_file()
#puts ficen.class


#ficen.each_with_object({}) { |k, v| arr <<  {k => v } }
#puts arr