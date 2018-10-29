nums = [3,2,2,3]
val = 3

def remove_element(nums, val)
  nums.count.times do
    nums.delete(val) if nums.include?(val)
  end
    nums.count
end

p remove_element(nums, val)
