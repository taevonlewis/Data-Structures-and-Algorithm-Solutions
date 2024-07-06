class ListNode {
    var val: Int
    var next: ListNode?

    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

let head = ListNode(1)
let node2 = ListNode(2)
let node3 = ListNode(3)
let node4 = ListNode(4)
let node5 = ListNode(5)
head.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
node5.next = nil

func reverseLinkedList(_ head: ListNode?) -> ListNode? {
    if head == nil || head?.next == nil {
        return nil
    }

    var curr: ListNode? = head
    var prev: ListNode? = nil

    while curr != nil {
        let next = curr?.next
        curr?.next = prev
        prev = curr
        curr = next
        print(prev!.val, terminator: "<-")
    }

    return prev
}

reverseLinkedList(head)