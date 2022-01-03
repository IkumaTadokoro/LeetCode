#Given a string s containing just the characters '(', ')', '{', '}', '[' and ']
#', determine if the input string is valid.
#
# An input string is valid if:
#
#
# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
#
#
#
# Example 1:
#
#
#Input: s = "()"
#Output: true
#
#
# Example 2:
#
#
#Input: s = "()[]{}"
#Output: true
#
#
# Example 3:
#
#
#Input: s = "(]"
#Output: false
#
#
#
# Constraints:
#
#
# 1 <= s.length <= 10⁴
# s consists of parentheses only '()[]{}'.
#
# Related Topics String Stack 👍 10434 👎 417


#leetcode submit region begin(Prohibit modification and deletion)
# @param {String} s
# @return {Boolean}
def is_valid(s)
  brackets = { '(' => ')', '{' => '}', '[' => ']' }
  search_targets = []

  s.chars.each do |bracket|
    if brackets.key?(bracket)
      search_targets.unshift brackets[bracket]
      next
    end

    if bracket == search_targets.first
      search_targets.shift
    else
      search_targets.unshift brackets[bracket]
      break
    end
  end

  search_targets.empty?
end
#leetcode submit region end(Prohibit modification and deletion)
