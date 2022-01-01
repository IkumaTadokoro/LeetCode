#Given an array of integers nums and an integer target, return indices of the
#two numbers such that they add up to target.
#
# You may assume that each input would have exactly one solution, and you may
#not use the same element twice.
#
# You can return the answer in any order.
#
#
# Example 1:
#
#
#Input: nums = [2,7,11,15], target = 9
#Output: [0,1]
#Output: Because nums[0] + nums[1] == 9, we return [0, 1].
#
#
# Example 2:
#
#
#Input: nums = [3,2,4], target = 6
#Output: [1,2]
#
#
# Example 3:
#
#
#Input: nums = [3,3], target = 6
#Output: [0,1]
#
#
#
# Constraints:
#
#
# 2 <= nums.length <= 10⁴
# -10⁹ <= nums[i] <= 10⁹
# -10⁹ <= target <= 10⁹
# Only one valid answer exists.
#
#
#
#Follow-up: Can you come up with an algorithm that is less than O(n²) time
#complexity? Related Topics Array Hash Table 👍 27563 👎 879


#leetcode submit region begin(Prohibit modification and deletion)
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hashmap = {}

  (0..nums.size - 1).to_a.each do |indices|
    num = nums[indices]
    complement = target - num

    return [hashmap[num], indices] if hashmap.key?(num)

    hashmap[complement] = indices
  end
end
#leetcode submit region end(Prohibit modification and deletion)
