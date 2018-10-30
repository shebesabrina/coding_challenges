require 'pry'

string = '())()' #4
string_2 = '(()' #2
string_3 = '))))))' #0


def longest_valid_parentheses(string)
  index = 0
  count = 0
  string.each_char do |char|
    current_index = char
    next_index = string[index + 1]
    count += 2 if current_index == "(" && next_index == ")"
    index = index + 1
  end
  return count
end




p longest_valid_parentheses(string)
p longest_valid_parentheses(string_2)
p longest_valid_parentheses(string_3)
