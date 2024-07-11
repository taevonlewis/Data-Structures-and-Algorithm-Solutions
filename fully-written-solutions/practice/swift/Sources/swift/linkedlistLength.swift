// let head = ListNode(1)
// let node2 = ListNode(2)
// let node3 = ListNode(3)
// let node4 = ListNode(4)
// let node5 = ListNode(5)
// head.next = node2
// node2.next = node3
// node3.next = node4
// node4.next = node5
// node5.next = nil

// func printLinkedList(_ head: ListNode?) {
//     if head == nil {
//         return
//     } else if (head?.next == nil) {
//         return
//     }

//     var current: ListNode? = head
//     while current != nil {
//         print(current!.val, terminator: "->")
//         current = current!.next
//     }
// }

// printLinkedList(head)