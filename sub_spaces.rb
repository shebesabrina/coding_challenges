string = "Happy Birthday"

def sub_spaces(string)
  string.split(" ").join("%02")
end

puts sub_spaces(string)
