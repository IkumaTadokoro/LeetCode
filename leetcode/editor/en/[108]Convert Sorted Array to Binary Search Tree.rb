#Given an integer array nums where the elements are sorted in ascending order,
#convert it to a height-balanced binary search tree.
#
# A height-balanced binary tree is a binary tree in which the depth of the two
#subtrees of every node never differs by more than one.
#
#
# Example 1:
#
#
#Input: nums = [-10,-3,0,5,9]
#Output: [0,-3,9,-10,null,5]
#Explanation: [0,-10,5,null,-3,null,9] is also accepted:
#
#
#
# Example 2:
#
#
#Input: nums = [1,3]
#Output: [3,1]
#Explanation: [1,null,3] and [3,1] are both height-balanced BSTs.
#
#
#
# Constraints:
#
#
# 1 <= nums.length <= 10⁴
# -10⁴ <= nums[i] <= 10⁴
# nums is sorted in a strictly increasing order.
#
# Related Topics Array Divide and Conquer Tree Binary Search Tree Binary Tree 👍
# 6021 👎 345


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
# @param {Integer[]} nums
# @return {TreeNode}
def construct_bst_helper(nums, left ,right)
  return nil if left > right

  middle = left + (right - left) / 2
  current = TreeNode.new(nums[middle])
  current.left = construct_bst_helper(nums, left, middle - 1)
  current.right = construct_bst_helper(nums, middle + 1, right)
  current
end

def sorted_array_to_bst(nums)
  return nil if nums.nil? || nums.empty?

  construct_bst_helper(nums, 0, nums.length - 1)
end
#leetcode submit region end(Prohibit modification and deletion)
