string = ["flower","flow","flight"]

def common_prefix(string)
  return "" if string.include?(nil) || string.empty?
  short = string.compact.min_by { |word| word.length }
  result = ""
  short.each_char do |chr|
    if string.all? { |letter| letter.start_with?(result + chr) }
      result << chr
    end
  end
  result
end
# require 'pry' ; binding.pry

# puts common_prefix([nil, '0', '013'])
puts common_prefix(string)
