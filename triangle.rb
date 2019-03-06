require 'pry'

def triangle(number)
  s = "#"
  number.times do
    puts s = s + s
  end
end

triangle(9)
