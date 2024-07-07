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

let list1 = ListNode(1)
let list1Node2 = ListNode(2)
let list1Node3 = ListNode(4)
list1.next = list1Node2
list1Node2.next = list1Node3
list1Node3.next = nil
let list2 = ListNode(1)
let list2Node2 = ListNode(3)
let list2Node3 = ListNode(4)
list2.next = list2Node2
list2Node2.next = list2Node3
list2Node3.next = nil

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    guard list1 != nil || list2 != nil else { return nil }
    guard !(list1 == nil && list2 != nil) && !(list1 != nil && list2 == nil) else { 
        return list1 ?? list2
    }

    var l1 = list1
    var l2 = list2
    let dummy: ListNode? = ListNode(0)
    var res: ListNode? = dummy

    while l1 != nil && l2 != nil {
        if l1!.val < l2!.val {
            res?.next = l1
            l1 = l1?.next
        } else {
            res?.next = l2
            l2 = l2?.next
        }

        res = res?.next
    }

    while l1 != nil {
        res?.next = l1
        res = res?.next
        l1 = l1?.next
    }

    while l2 != nil {
        res?.next = l2
        res = res?.next
        l2 = l2?.next
    }

    return dummy?.next
}

if let mergedList = mergeTwoLists(list1, list2) {
    var curr: ListNode? = mergedList
    while curr != nil {
        print(curr!.val, terminator: "->")
        curr = curr?.next
    }
}