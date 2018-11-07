string = "abcdbbfcba"

def longest_palindrome(string)
  result = []
  string.size.times do |start_index|
    p "start index"
    p start_index
    (string.size - start_index).times do |substring_length|
      p "substring"
      p substring_length
      substr = string.slice(start_index, start_index + substring_length)
      # p substr
      result << substr if substr == substr.reverse
    end
  end
    p result
    return result.max_by do |string_length|
    string_length.length
  end
end

p longest_palindrome(string)
