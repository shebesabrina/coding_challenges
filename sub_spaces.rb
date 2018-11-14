string = "Happy  Birthday"

def sub_spaces(string)
  new_string = ""
  string.each_char do |char|
    if char == " "
      new_string << "%02"
    else
      new_string << char
    end
  end
  new_string
end

puts sub_spaces(string)
