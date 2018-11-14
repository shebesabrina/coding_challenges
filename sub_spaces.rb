string = "Happy Birthday"

def sub_spaces(string)
  string.gsub(" ", "%02")
end

puts sub_spaces(string)
