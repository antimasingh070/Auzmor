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
def inorder_traversal(root)
    stack, ans = [], []
  while !stack.empty? || !root.nil?
    if !root.nil?
      stack << root
      root = root.left
    else
      root = stack.pop
      ans << root.val
      root = root.right
    end
  end
  ans
end
