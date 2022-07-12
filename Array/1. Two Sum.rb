# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  v2i = nums.map.with_index { |n, i| [n, i] }.to_h
  nums.each_with_index { |n, i| return [i, v2i[target - n]] if v2i.key?(target - n) && v2i[target - n] != i }
end
nums = [2, 7, 11, 15]
target = 9
p two_sum(nums, target)
