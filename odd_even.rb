require 'pry'
puts "Pick a number"
number = gets.chomp.to_i
def odd_or_even(number)
  if number % 2 == 0
    puts "You picked an even number"
  else
    puts "You picked an odd number"
  end
end

puts odd_or_even(number)
