require 'pry'

def triangle(number)
  s = "#"
  number.times do
    s + s
  end
end

puts triangle(10)
