nums = [2, 7, 11, 15]
target = 9

def two_sum(nums, target)

    hash = {}
    nums.each_with_index do |num, index|
        if hash[target - num]
          require 'pry' ; binding.pry
            return [hash[target - num], index]
        end
        hash[num] = index
    end
end

puts two_sum(nums, target)
