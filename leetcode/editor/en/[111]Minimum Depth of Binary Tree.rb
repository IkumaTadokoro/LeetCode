#Given a binary tree, find its minimum depth.
#
# The minimum depth is the number of nodes along the shortest path from the
#root node down to the nearest leaf node.
#
# Note: A leaf is a node with no children.
#
#
# Example 1:
#
#
#Input: root = [3,9,20,null,null,15,7]
#Output: 2
#
#
# Example 2:
#
#
#Input: root = [2,null,3,null,4,null,5,null,6]
#Output: 5
#
#
#
# Constraints:
#
#
# The number of nodes in the tree is in the range [0, 10⁵].
# -1000 <= Node.val <= 1000
#
# Related Topics Tree Depth-First Search Breadth-First Search Binary Tree 👍 388
#9 👎 938


#leetcode submit region begin(Prohibit modification and deletion)
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
def min_depth(root)
  return 0 if root.nil?

  left = min_depth(root.left)
  right = min_depth(root.right)
  1 + (left.zero? || right.zero? ? left + right : [left, right].min)
end
#leetcode submit region end(Prohibit modification and deletion)
