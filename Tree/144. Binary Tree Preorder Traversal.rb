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
# @return {Integer[]}
def preorder_traversal(root, ans=[])
  return [] if root.nil?
  ans << root.val
  preorder_traversal(root.left, ans)
  preorder_traversal(root.right, ans)
  ans
end
