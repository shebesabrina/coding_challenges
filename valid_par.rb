require 'pry'
require 'set'

string = ')()())' #4
string_1 = '()()' #4
string_2 = '(()' #2
string_3 = '))))))' #0
string_4 = ')()())))()()' #4
string_5 = "()(()" #2

def is_valid?(string)
  return false unless string[0] == "("
  count = 0
  string.each_char do |char|
      count += 1 if char == "("
      count -= 1 if char == ")"
      return false if count < 0
  end
  count == 0
end

def get_subsets(string)
  result = Set.new
  string.size.times do |length|
    string.each_char.with_index do |_, index|
      result.add string[index..index + length]
    end
  end
  result.to_a
end

def longest_valid_parentheses(string)
  strings = get_subsets(string)
  current_longest = ""
  strings.each do |s|
    current_longest = s if is_valid?(s) && s.size > current_longest.size
  end
  current_longest.size
end

def longest_valid_parentheses(string)
  current = 0
  stack = []
  longest = 0

  string.each_char do |char|
    if char == "("
      stack << char
    elsif stack.pop == "("
      current += 2
      longest = current if current > longest
    else
      stack = []
      longest = current if current > longest
      current = 0
    end
  end
  longest
end

p is_valid?(string)
p is_valid?(string_1)
p is_valid?(string_2)
p is_valid?(string_3)

p get_subsets(string)
p get_subsets(string_1)
p get_subsets(string_2)
p get_subsets(string_3)

p longest_valid_parentheses(string)
p longest_valid_parentheses(string_1)
p longest_valid_parentheses(string_2)
p longest_valid_parentheses(string_3)
p longest_valid_parentheses(string_4)
p longest_valid_parentheses(string_5)
