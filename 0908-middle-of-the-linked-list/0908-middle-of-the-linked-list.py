# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next

"""
Problem Summary: Return the middle node to end of list if odd number of nodes, or 2nd middle node to end of list if even number of nodes
Pattern/Approach: Two Pointers, slow and fast pointer
Input: 1->2->3->4->5 or 1->2->3->4->5->6
Output: 3->4->5 or 4->5->6
Assumptions/Constraints: Number of nodes between 1 and 100 
Processes/Steps: 
    slow, fast = head
    while the fast.next pointer isnt null
        move slow up 1
        move fast up 1
    return slow pointer

Edge Cases: List length < 2, return list as is
"""
class Solution:
    def middleNode(self, head: Optional[ListNode]) -> Optional[ListNode]:
        if head.next == None:
            return head
            
        slow, fast = head, head

        while fast != None and fast.next != None:
            slow = slow.next
            fast = fast.next.next
            
        return slow







