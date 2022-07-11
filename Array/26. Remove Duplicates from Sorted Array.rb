# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return 0 if nums.empty?
  x, k = nums[0], 1
  (1..nums.size-1).each do |i|
    next if nums[i] == x
    nums[k] = nums[i]
    x = nums[k]
    k += 1
  end
  k
end
