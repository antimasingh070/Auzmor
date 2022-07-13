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
# @return {Integer[][]}
def level_order(root)
  return [] if root.nil?
  result = []
  queue = [root]
  until queue.empty?
    sub = []
    queue.size.times do
      x = queue.shift
      sub << x.val
      queue << x.left unless x.left.nil?
      queue << x.right unless x.right.nil?
    end
    result << sub
  end
  result
end
