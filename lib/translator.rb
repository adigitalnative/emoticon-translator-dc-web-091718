require 'yaml'
require 'pry'

def load_library(file)
  loaded_library = YAML.load_file(file)
  
  parsed_file = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  
  loaded_library.each do |key, values|
    parsed_file["get_emoticon"][values[0]] = values[1]
    parsed_file["get_meaning"][values[1]] = key
  end
  
  parsed_file
end

def get_japanese_emoticon(file, emoticon)
  library = load_library(file)
end

def get_english_meaning
  # code goes here
end