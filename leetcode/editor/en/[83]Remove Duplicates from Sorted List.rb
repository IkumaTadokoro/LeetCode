#Given the head of a sorted linked list, delete all duplicates such that each
#element appears only once. Return the linked list sorted as well.
#
#
# Example 1:
#
#
#Input: head = [1,1,2]
#Output: [1,2]
#
#
# Example 2:
#
#
#Input: head = [1,1,2,3,3]
#Output: [1,2,3]
#
#
#
# Constraints:
#
#
# The number of nodes in the list is in the range [0, 300].
# -100 <= Node.val <= 100
# The list is guaranteed to be sorted in ascending order.
#
# Related Topics Linked List 👍 4514 👎 181


#leetcode submit region begin(Prohibit modification and deletion)
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
  return head if head.nil? || head.next.nil?

  current = head

  until current.next.nil?
    if current.val == current.next.val
      current.next = current.next.next
    else
      current = current.next
    end
  end

  head
end
#leetcode submit region end(Prohibit modification and deletion)
