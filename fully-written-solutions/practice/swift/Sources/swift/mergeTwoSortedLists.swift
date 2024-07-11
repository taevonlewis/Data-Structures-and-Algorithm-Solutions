import Foundation

public func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    guard list1 != nil, list2 != nil else {
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

// if let mergedListEmpty = mergeTwoLists(emptyList1, emptyList2) {
//     printList(mergedListEmpty)
// } else {
//     print("Merged list is nil")
// }

// if let mergedListOneEmpty = mergeTwoLists(emptyList1, list1) {
//     printList(mergedListOneEmpty)
// }

// if let mergedListOtherEmpty = mergeTwoLists(list2, emptyList2) {
//     printList(mergedListOtherEmpty)
// }

// if let mergedList = mergeTwoLists(list1, list2) {
//     printList(mergedList)
// }