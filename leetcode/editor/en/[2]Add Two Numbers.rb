#You are given two non-empty linked lists representing two non-negative
#integers. The digits are stored in reverse order, and each of their nodes contains a
#single digit. Add the two numbers and return the sum as a linked list.
#
# You may assume the two numbers do not contain any leading zero, except the
#number 0 itself.
#
#
# Example 1:
#
#
#Input: l1 = [2,4,3], l2 = [5,6,4]
#Output: [7,0,8]
#Explanation: 342 + 465 = 807.
#
#
# Example 2:
#
#
#Input: l1 = [0], l2 = [0]
#Output: [0]
#
#
# Example 3:
#
#
#Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
#Output: [8,9,9,9,0,0,0,1]
#
#
#
# Constraints:
#
#
# The number of nodes in each linked list is in the range [1, 100].
# 0 <= Node.val <= 9
# It is guaranteed that the list represents a number that does not have leading
#zeros.
#
# Related Topics Linked List Math Recursion 👍 15630 👎 3382


#leetcode submit region begin(Prohibit modification and deletion)
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

def add_two_numbers(l1, l2)
  dummy_head = current = ListNode.new(0)
  p, q = l1, l2
  carry = 0
  until p.nil? && q.nil?
    sum = carry + (p.nil? ? 0 : p.val) + (q.nil? ? 0 : q.val)
    carry = sum / 10
    current = current.next = ListNode.new(sum % 10)
    p, q = p&.next, q&.next
  end

  current.next = ListNode.new(carry) if carry.positive?
  dummy_head.next
end
#leetcode submit region end(Prohibit modification and deletion)
