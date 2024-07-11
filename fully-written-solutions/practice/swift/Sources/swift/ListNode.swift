import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0
        self.next = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

// let list1 = ListNode(1)
// let list1Node2 = ListNode(2)
// let list1Node3 = ListNode(4)
// list1.next = list1Node2
// list1Node2.next = list1Node3
// list1Node3.next = nil
// let list2 = ListNode(1)
// let list2Node2 = ListNode(3)
// let list2Node3 = ListNode(4)
// list2.next = list2Node2
// list2Node2.next = list2Node3
// list2Node3.next = nil

// let emptyList1: ListNode? = nil
// let emptyList2: ListNode? = nil