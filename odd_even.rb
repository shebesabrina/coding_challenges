require 'pry'
puts "Pick a number"
number = gets.chomp.to_i
def odd_or_even(number)
  if  number.abs == 42
    puts 'You picked my favorite number'
  elsif
    number.abs.even?
    puts 'You picked an even number'
  else
    puts 'You picked an odd number'
  end
end

puts odd_or_even(number)
