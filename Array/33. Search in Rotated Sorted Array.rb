# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  i, j = 0, nums.length-1
  while i <= j
    mid = (i + j) / 2
    if nums[mid] == target
      return mid
    elsif nums[mid] >= nums[i]
      if target < nums[mid] && target >= nums[i]
	j = mid - 1
      else
	i = mid + 1
      end
    else
      if target <= nums[j] && target > nums[mid]
	i = mid + 1
      else
	j = mid - 1
      end
    end
  end
  -1
end
