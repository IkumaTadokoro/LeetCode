#Given a string s, find the length of the longest substring without repeating
#characters.
#
#
# Example 1:
#
#
#Input: s = "abcabcbb"
#Output: 3
#Explanation: The answer is "abc", with the length of 3.
#
#
# Example 2:
#
#
#Input: s = "bbbbb"
#Output: 1
#Explanation: The answer is "b", with the length of 1.
#
#
# Example 3:
#
#
#Input: s = "pwwkew"
#Output: 3
#Explanation: The answer is "wke", with the length of 3.
#Notice that the answer must be a substring, "pwke" is a subsequence and not a
#substring.
#
#
#
# Constraints:
#
#
# 0 <= s.length <= 5 * 10⁴
# s consists of English letters, digits, symbols and spaces.
#
# Related Topics Hash Table String Sliding Window 👍 20153 👎 916


#leetcode submit region begin(Prohibit modification and deletion)
# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  return 0 if s == ''
  return 1 if s.length == 1

  hash_map = {}
  answer = 0
  left = 0

  (0..s.length - 1).each do |right|
    left = [left, hash_map[s[right]]].max if hash_map.include?(s[right])
    answer = [answer, right - left + 1].max
    hash_map[s[right]] = right + 1
  end
  answer
end
#leetcode submit region end(Prohibit modification and deletion)
