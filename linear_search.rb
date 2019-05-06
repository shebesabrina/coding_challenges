array = [4,6,7,8,9,1,3,5]
target = 10

def linear_search(target, array)
  array.each_with_index do |num, index|
    if num == target
      return index
    else
      return -1
    end
  end
end

puts linear_search(target, array)
