require 'pry'
require 'set'

# def longest_valid_parentheses(string)
#   index = 0
#   count = 0
#   string.each_char do |char|
#     current_index = char
#     next_index = string[index + 1]
#     count += 2 if current_index == "(" && next_index == ")"
#     index = index + 1
#   end
#   return count
# end

# def longest_valid_parentheses(string)
#   return count if string[index + 1].nil?
#   if string[index] == "(" && string[index + 1] == ")"
#     count += 2
#     index += 1
#     longest_valid_parentheses(string, index, count)
#   else
#     index += 1
#     longest_valid_parentheses(string, index, count)
#   end
# end

def longest_valid_parentheses(string)
  max_answer = 0
  stack = [-1]

  string.each_char.with_index do |char, index|
    if char == '('
      stack.push(index)
    else
      stack.pop
      if stack.empty?
        stack.push(index)
      else
        max_answer = [max_answer, index + stack.last].max
      end
    end
  end
  max_answer
end

string = ')()())' #4
string_1 = '()' #2
string_2 = '(()' #2
string_3 = '))))))' #0
string_4 = ')()())))()()' #4
string_5 = "()(()" #2
p longest_valid_parentheses(string)
p longest_valid_parentheses(string_1)
p longest_valid_parentheses(string_2)
p longest_valid_parentheses(string_3)
p longest_valid_parentheses(string_4)
p longest_valid_parentheses(string_5)
