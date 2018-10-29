 nums = [0,0,1,1,1,2,2,3,3,4]

def remove_duplicates(nums)
  nums.length.times do
    pop = nums.pop
    if !nums.include?(pop)
      nums.unshift(pop)
    end
  end
  nums.count
  # counts = Hash.new(0)
  # nums.each do |value|
  #     counts[value] += 1
  # end
  # counts.keys
end

p remove_duplicates(nums)
