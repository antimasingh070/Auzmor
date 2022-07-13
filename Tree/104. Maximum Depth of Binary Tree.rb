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
# @return {Integer}
def max_depth(root)
    return 0 if root.nil?
  queue = [[root,1]]
  max = 1
  until queue.empty?
    cur, height = queue.shift
    queue << [cur.left, height+1] unless cur.left.nil?
    queue << [cur.right, height+1] unless cur.right.nil?
    max = [height+1, max].max if !cur.left.nil? || !cur.right.nil?
  end
  max
end
