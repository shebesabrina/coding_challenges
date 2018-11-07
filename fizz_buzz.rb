puts "What range do you want?"

input = gets.chomp.to_i

input.times do |num|
  if num % 3 == 0 && num % 5 == 0
  puts "FizzBuzz"
  elsif num % 3 == 0
    puts "Fizz"
  elsif num % 5 == 0
    puts "Buzz"
  else
    puts num
  end
end
