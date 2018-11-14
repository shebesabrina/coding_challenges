string = "abc"

def is_unique?(string)
  string.chars.uniq == string.chars
end

puts is_unique?(string)
