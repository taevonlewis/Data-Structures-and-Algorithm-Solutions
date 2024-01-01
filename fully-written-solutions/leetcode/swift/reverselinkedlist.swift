/*
206. Reverse Linked List
Given the head of a singly linked list, reverse the list, and return the reversed list.

 

Example 1:


Input: head = [1,2,3,4,5]
Output: [5,4,3,2,1]
Example 2:


Input: head = [1,2]
Output: [2,1]
Example 3:

Input: head = []
Output: []
 

Constraints:

The number of nodes in the list is the range [0, 5000].
-5000 <= Node.val <= 5000
*/

class ListNode {
  var val: Int
  var next: ListNode?

  init(_ val: Int) {
    self.val = val
    self.next = nil
  }

  func print() {
    var curr: ListNode? = self
    while curr != nil {
      Swift.print(String(curr!.val) + " -> ", terminator: "")
      curr = curr?.next
    }
    Swift.print()
    }
}

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }

        var prev: ListNode? = nil
        var curr: ListNode? = head
        var next: ListNode? = curr?.next

        while curr != nil {
            next = curr?.next
            curr?.next = prev
            prev = curr
            curr = next
        }

        var printNode: ListNode? = prev
        while printNode != nil {
            print(printNode!.val)
            printNode = printNode?.next
        }

        return prev
    }
}

let sol = Solution()

let head = ListNode(1)
let node2 = ListNode(2)
let node3 = ListNode(3)
let node4 = ListNode(4)
let node5 = ListNode(5)

head.next = node2
node2.next = node3
node3.next = node4
node4.next = node5

_ = sol.reverseList(head)

// let reversed = sol.reverseList(head)
// reversed?.print()