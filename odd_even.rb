require 'pry'
puts "Pick a number"
number = gets.chomp.to_i

def odd_or_even(number)
  puts "You picked an even number" if number % 2 == 0

  if number % 2 == 1
    puts "You picked an odd number"
  else
    number = number - 2
    odd_or_even(number)
  end
end

puts odd_or_even(number)
