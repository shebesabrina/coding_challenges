require 'pry'

string = "wkewwpwabcd"

def length_of_longest_substring(string)
  stack = []
  count = 0
  string.each_char do |letter|
    if !stack.include?(letter)
      stack << letter
    else
      count = [stack.size, count].max
      index = stack.index(letter)
      stack.shift(index + 1)
      stack << letter
    end
  end
  [stack.size, count].max
end

puts length_of_longest_substring(string)
