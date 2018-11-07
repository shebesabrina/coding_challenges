num = [-1, 0, 1, 2, -1, -4]

def three_sum(num)
  result = []
  num.each_with_index do |n, i|
    target = -n
    two_num = two_sum(num[i+1..-1] + num[0...i], target)
      if two_num
      two_num << n
      sorted = two_num.sort
      result << sorted
    end
  end
  result.uniq
end

def two_sum(nums, target)
  hash = {}
  nums.each do |num|
      if hash[target - num]
        return [target - num, num]
      end
    hash[num] = true
  end
  false
end

puts three_sum(num)
