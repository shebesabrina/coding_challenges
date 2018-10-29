needle = "ll"
haystack = "hello"
count = needle.size

haystack.size.times do |letter|
  puts letter
  puts letter if haystack[letter...letter + count] == needle
end
