# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {TreeNode}
def merge_trees(t1, t2)
  return t1 if t2.nil?
  return t2 if t1.nil?
  x = TreeNode.new(t1.val+t2.val)
  x.left = merge_trees(t1.left, t2.left)
  x.right = merge_trees(t1.right, t2.right)
  x
end
