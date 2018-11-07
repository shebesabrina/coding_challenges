string = "abc abc"

def is_unique?(string)
  true if string.chars.uniq
end

puts is_unique?(string)
