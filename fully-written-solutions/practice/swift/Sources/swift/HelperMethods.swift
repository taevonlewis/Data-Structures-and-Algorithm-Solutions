import Foundation

public func printList(_ list: ListNode?) {
    var current = list
    while current != nil {
        print(current!.val, terminator: " -> ")
        current = current?.next
    }
    print("nil")
}