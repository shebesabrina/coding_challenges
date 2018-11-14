require 'pry'

def is_valid(string_input)
  return false if string_input.nil? || string_input.length.odd? || string_input.empty?
  payload = {
   '['=> ']',
   '{'=> '}',
   '('=> ')'
  }

  stack = []
  string_input.each_char do |char|
    binding.pry
    if payload.has_key?(char)
      stack << char
    else
      check = stack.pop
      return false if payload[check] != char
    end
  end
  return true if stack.empty?
  return false
end

s = "()"
puts is_valid(s)
