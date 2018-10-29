ROMAN =
{
  "I" => 1,
  "IV" => 4,
  "V" => 5,
  "IX" => 9,
  "X" => 10,
  "XL" => 40,
  "L" => 50,
  "XC" => 90,
  "C" => 100,
  "CD" => 400,
  "D" => 500,
  "CM" => 900,
  "M" => 1000
}

def int_to_roman(num)
  string = ""
  ROMAN.keys.reverse.each do |key|
    mod = num % ROMAN[key]
    # require 'pry' ; binding.pry if num <= 8
    if mod == 0
      times = num / ROMAN[key]
      times.times do
        string << key
      end
      return string
    elsif mod < num
      times = num / ROMAN[key]
      times.times do
        string << key
      end
      num = num % ROMAN[key]
    end
  end
  string
end

 p int_to_roman(num)
