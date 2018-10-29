ROMAN = {
"I"=>1,
"V"=>5,
"X"=>10,
"L"=>50,
"C"=>100,
"D"=>500,
"M"=>1000,
}

# ROMAN = {
#   "I" => {
#     value: 1,
#     subtractable: true,
#     subtractable_from: ["V", "X"],
#   },
#   "V" => {
#     value: 1,
#     subtractable: false,
#     subtractable_from: [],
#   },
#   "X" => {
#     value: 10,
#     subtractable: true,
#     subtractable_from: ["L", "C"],
#   }
# }

def roman_to_int(string)
  num = 0
  ignore =  false
  string = string.chars
  string.each_with_index do |letter, index|
    if ignore == true
      ignore = false
      next
    end
    if letter == "I"
      if string[index +1] == "V" || string[index +1] == "X"
        num += (ROMAN[string[index+1]] - ROMAN[letter])
        ignore = true
      else
        num += ROMAN[letter]
      end
    elsif letter == "X"
      if string[index +1] == "L" || string[index +1] == "C"
        num += (ROMAN[string[index+1]] - ROMAN[letter])
        ignore = true
      else
        num += ROMAN[letter]
      end
    elsif letter == "C"
      if string[index +1] == "D" || string[index +1] == "M"
        num += (ROMAN[string[index+1]] - ROMAN[letter])
        ignore = true
      else
        num += ROMAN[letter]
      end
    else
      num += ROMAN[letter]
    end
  end
  return num
    #map over each letter
    #t/f if I is before V and if I is before X
    #I can be placed before V (5) and X (10) to make 4 and 9.
# X can be placed before L (50) and C (100) to make 40 and 90.
# C can be placed before D (500) and M (1000) to make 400 and 900.
end
