# require modules here
require "yaml"
def load_library(path)
  library=YAML.load_file(path)
  return_hash={"get_meaning"=>{}, "get_emoticon"=>{}}
  return return_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library("./lib/emoticons.yml")
