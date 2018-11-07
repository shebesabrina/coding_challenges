require "pry"
string = "loveleetcode"
dup = "cc"

def first_uniq_char(string)
  string.chars.find do |char|
    if string.count(char) == 1
      # binding.pry
      return string.index(char)
    else
      return -1
    end
  end
end

puts first_uniq_char(string)
puts first_uniq_char(dup)
