string_1 = "string"
string_2 = "ingstr"

def permutation?(string_1, string_2)
  first = string_1.chars.permutation.map(&:join)
  first.include?(string_2)
end

puts permutation?(string_1, string_2)
