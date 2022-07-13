# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums, lo = 0, hi = nums.length-1)
  return if lo > hi
  mid = (lo + hi + 1) / 2
  TreeNode.new(nums[mid]).tap do |root|
    root.left = sorted_array_to_bst(nums, lo, mid-1)
    root.right = sorted_array_to_bst(nums, mid+1, hi)
  end
end
