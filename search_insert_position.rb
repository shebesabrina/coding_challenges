require 'pry'

array = [1,3,5,6]
target = 2

def search_insert(array, target)
  for index in (0...array.size)
    return index if array[index] >= target
  end
  array.size
end

puts search_insert(array, target)
