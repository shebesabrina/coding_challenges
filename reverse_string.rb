string = "string"

def reverse_string(string)
  array = []
  string.each_char do |char|
    array.unshift(char)
  end
  array.join
end

puts reverse_string(string)
