# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate_a(nums, k)
  nums.rotate!(k)
end
def rotate_b(nums, k)
  x, n = nums.dup, nums.size
  (0..n-1).each do |i|
    nums[(i+k)%n] = x[i]
  end
end


def rotate(nums, k)
  k %= nums.length
  reverse(nums, 0, nums.size-1)
  reverse(nums, 0, k-1)
  reverse(nums, k, nums.size-1)
end

def swap(nums, i, j)
  nums[i], nums[j] = nums[j], nums[i]
end

def reverse(nums, i, j)
  until i > j
    swap(nums, i, j)
    i += 1
    j -= 1
  end
end
