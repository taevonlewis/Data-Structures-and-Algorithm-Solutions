// The Swift Programming Language
// https://docs.swift.org/swift-book

// main.swift

import Foundation

// Example non-empty lists
let mergeList1 = ListNode(1)
mergeList1.next = ListNode(2)
mergeList1.next?.next = ListNode(4)

let mergeList2 = ListNode(1)
mergeList2.next = ListNode(3)
mergeList2.next?.next = ListNode(4)

let emptyList1: ListNode? = nil
let emptyList2: ListNode? = nil

// Test with two empty lists
if let mergedListEmpty = mergeTwoLists(emptyList1, emptyList2) {
    printList(mergedListEmpty)
} else {
    print("Merged list is nil") // Expecting this output
}

// Test with one empty and one non-empty list
if let mergedListOneEmpty = mergeTwoLists(emptyList1, mergeList1) {
    printList(mergedListOneEmpty) // Expecting the elements of list1
}

if let mergedListOtherEmpty = mergeTwoLists(mergeList2, emptyList2) {
    printList(mergedListOtherEmpty) // Expecting the elements of list2
}

// Test with two non-empty lists
if let mergedList = mergeTwoLists(mergeList1, mergeList2) {
    printList(mergedList) // Expecting merged elements of list1 and list2
}

