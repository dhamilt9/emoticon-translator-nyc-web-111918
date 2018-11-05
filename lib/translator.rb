# require modules here
require "yaml"
def load_library(path)
  library=YAML.load_file(path)
  return_hash={"get_meaning"=>{}, "get_emoticon"=>{}}
  library.each do |key, value|
    return_hash["get_meaning"][value[1]]=key
    return_hash["get_emoticon"][value[0]]=value[1]
  end
  return return_hash
end

def get_japanese_emoticon(path, emoticon)
  payload=load_library(path)["get_emoticon"][emoticon]
  if payload==nil
    payload="Sorry, that emoticon was not found"
  end
  return payload
end

def get_english_meaning(path, emoticon)
  payload=load_library(path)["get_meaning"][emoticon]
  if payload==nil
    payload="Sorry, that emoticon was not found"
  end
  return payload
end
