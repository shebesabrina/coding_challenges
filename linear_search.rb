array = [4,6,7,8,9,1,3,5]
target = 6

def linear_search(target, array)
  array.each_with_index do |num, index|
    return index if num == target
  end
end

puts linear_search(target, array)
