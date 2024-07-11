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

// func deleteNode(_ head: ListNode?, _ node: Int) {
//     if head == nil || head?.next == nil { return }

//     var cnt = 0
//     var curr = head

//     while curr != nil {
//         cnt += 1
//         if cnt == node {
//             curr?.val = curr?.next?.val
//             node?.next = node?.next?.next
//         }
//     }

//     while curr != nil {
//         print(curr!.val, terminator: "->")
//         curr = curr?.next
//     }
// }

// deleteNode(head, 3)