#Given a string s, find the first non-repeating character in it and return its
#index. If it does not exist, return -1.
#
#
# Example 1:
# Input: s = "leetcode"
#Output: 0
# Example 2:
# Input: s = "loveleetcode"
#Output: 2
# Example 3:
# Input: s = "aabb"
#Output: -1
#
#
# Constraints:
#
#
# 1 <= s.length <= 10⁵
# s consists of only lowercase English letters.
#
# Related Topics Hash Table String Queue Counting 👍 4731 👎 190


#leetcode submit region begin(Prohibit modification and deletion)
# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  hash_table = {}
  s.each_char.with_index { |char, index| hash_table[char] = hash_table[char].nil? ? index : false }
  hash_table.values.select { _1 }.first || -1
end
#leetcode submit region end(Prohibit modification and deletion)
