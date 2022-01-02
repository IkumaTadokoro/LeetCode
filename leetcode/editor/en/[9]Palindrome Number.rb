#Given an integer x, return true if x is palindrome integer.
#
# An integer is a palindrome when it reads the same backward as forward.
#
#
# For example, 121 is a palindrome while 123 is not.
#
#
#
# Example 1:
#
#
#Input: x = 121
#Output: true
#Explanation: 121 reads as 121 from left to right and from right to left.
#
#
# Example 2:
#
#
#Input: x = -121
#Output: false
#Explanation: From left to right, it reads -121. From right to left, it becomes
#121-. Therefore it is not a palindrome.
#
#
# Example 3:
#
#
#Input: x = 10
#Output: false
#Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
#
#
#
# Constraints:
#
#
# -2³¹ <= x <= 2³¹ - 1
#
#
#
#Follow up: Could you solve it without converting the integer to a string?
#Related Topics Math 👍 4724 👎 1964


#leetcode submit region begin(Prohibit modification and deletion)
# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x.negative?
  return true if x.digits.uniq.count == 1

  x.to_s == x.to_s.reverse
end
#leetcode submit region end(Prohibit modification and deletion)

is_palindrome(121)
