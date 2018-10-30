require 'pry'

string = '())()' #4
string_2 = '(()' #2
string_3 = '))))))' #0


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

def longest_valid_parentheses(string)
  return count if string[index + 1].nil?
  if string[index] == "(" && string[index + 1] == ")"
    count += 2
    index += 1
    longest_valid_parentheses(string, index, count)
  else
    index += 1
    longest_valid_parentheses(string, index, count)
  end
end



p longest_valid_parentheses(string)
p longest_valid_parentheses(string_2)
p longest_valid_parentheses(string_3)
