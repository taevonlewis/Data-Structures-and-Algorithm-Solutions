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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        guard list1 != nil, list2 != nil else {
            return list1 ?? list2
        }

        var l1: ListNode? = list1
        var l2: ListNode? = list2
        let mergedList: ListNode? = ListNode(0)
        var dummyList: ListNode? = mergedList

        while l1 != nil && l2 != nil {
            if l1!.val <= l2!.val {
                dummyList?.next = l1
                l1 = l1?.next
            } else {
                dummyList?.next = l2
                l2 = l2?.next
            }

            dummyList = dummyList?.next
        }

        dummyList?.next = l1 ?? l2

        return mergedList?.next
    }
}