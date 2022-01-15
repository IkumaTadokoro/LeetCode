#Given an integer numRows, return the first numRows of Pascal's triangle.
#
# In Pascal's triangle, each number is the sum of the two numbers directly
#above it as shown:
#
#
# Example 1:
# Input: numRows = 5
#Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
# Example 2:
# Input: numRows = 1
#Output: [[1]]
#
#
# Constraints:
#
#
# 1 <= numRows <= 30
#
# Related Topics Array Dynamic Programming 👍 4550 👎 186


#leetcode submit region begin(Prohibit modification and deletion)
# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  num_rows.times.map do |n|
    [p = 1] + (1..n).map { |k| p = p * (n - k + 1) / k }
  end
end
#leetcode submit region end(Prohibit modification and deletion)
