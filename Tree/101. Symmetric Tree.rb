# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
  return true if root.nil?
  helper(root.left, root.right)
end

def helper(a, b)
  return true if a.nil? && b.nil?
  return false if a.nil? || b.nil?
  a.val == b.val && helper(a.left, b.right) && helper(a.right, b.left)
end
