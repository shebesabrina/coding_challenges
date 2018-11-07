string = "-91283472332"

def my_atoi(string)
  num = string.to_i
  big_num = 2**31
  return num if num.abs < big_num
  return big_num - 1 if num.positive?
  return -big_num
end

puts my_atoi(string)
