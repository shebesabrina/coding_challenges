require 'pry'

string_1 = "strings"
string_2 = "ingstrs"

def permutation?(string_1, string_2)
  hash_1 = string_counter(string_1)
  hash_2 = string_counter(string_2)
  hash_1 == hash_2
end

def string_counter(string_1)
  hash = Hash.new(0)
  string_1.chars.each do |letter|
    if hash.include?(letter)
      hash[letter] += 1
    else
      hash[letter] = 1
    end
  end
  hash
end



puts permutation?(string_1, string_2)
