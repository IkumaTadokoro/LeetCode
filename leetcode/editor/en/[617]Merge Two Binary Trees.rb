#You are given two binary trees root1 and root2.
#
# Imagine that when you put one of them to cover the other, some nodes of the
#two trees are overlapped while the others are not. You need to merge the two
#trees into a new binary tree. The merge rule is that if two nodes overlap, then sum
#node values up as the new value of the merged node. Otherwise, the NOT null node
#will be used as the node of the new tree.
#
# Return the merged tree.
#
# Note: The merging process must start from the root nodes of both trees.
#
#
# Example 1:
#
#
#Input: root1 = [1,3,2,5], root2 = [2,1,3,null,4,null,7]
#Output: [3,4,5,5,4,null,7]
#
#
# Example 2:
#
#
#Input: root1 = [1], root2 = [1,2]
#Output: [2,2]
#
#
#
# Constraints:
#
#
# The number of nodes in both trees is in the range [0, 2000].
# -10⁴ <= Node.val <= 10⁴
#
# Related Topics Tree Depth-First Search Breadth-First Search Binary Tree 👍 630
#4 👎 240


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
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {TreeNode}
def merge_trees(root1, root2)
  return root1 || root2 if root1.nil? || root2.nil?

  TreeNode.new(root1.val + root2.val, merge_trees(root1.left, root2.left), merge_trees(root1.right, root2.right))
end
#leetcode submit region end(Prohibit modification and deletion)
