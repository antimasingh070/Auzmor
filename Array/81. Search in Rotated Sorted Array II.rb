# @param {Integer[]} nums
# @param {Integer} target
# @return {Boolean}
def search(nums, target)
  i, j = 0, nums.length-1
  while i <= j
    mid = (i + j) / 2
    if nums[mid] == target
      return true
    elsif nums[i] == nums[j] && nums[i] == nums[mid]
      i += 1
      j -= 1
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
      false
end
