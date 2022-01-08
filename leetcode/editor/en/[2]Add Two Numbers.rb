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

def build_number(list_node, index = 0, number = 0)
  number += list_node.val * 10**index
  return number if list_node.next.nil?

  build_number(list_node.next, index + 1, number)
end

def build_list_node(number)
  return ListNode.new(number) if number < 10

  ListNode.new(number % 10, build_list_node(number / 10))
end

def add_two_numbers(l1, l2)
  l1_num = build_number(l1)
  l2_num = build_number(l2)
  build_list_node(l1_num + l2_num)
end
#leetcode submit region end(Prohibit modification and deletion)
