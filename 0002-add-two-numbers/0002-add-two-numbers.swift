/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var dummy = ListNode()
        var curr = dummy
        var carry: Int = 0
        var l = l1
        var ll = l2
        while l != nil || ll != nil || carry > 0 {
            var v1 = 0
            var v2 = 0

            if l != nil {
                v1 = l!.val
            }

            if ll != nil {
                v2 = ll!.val
            }

            var val = v1 + v2 + carry
            carry = val / 10
            val = val % 10
            curr.next = ListNode(val)

            if let next = curr.next {
                curr = next
            }
            
            if l != nil {
                l = l?.next
            }

            if ll != nil {
                ll = ll?.next
            }
        }

        return dummy.next
    }
}