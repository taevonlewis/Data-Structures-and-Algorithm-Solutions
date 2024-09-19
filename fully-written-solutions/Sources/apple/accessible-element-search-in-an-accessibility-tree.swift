import Foundation

class AccessibilityNode { var id: Int; var children: [AccessibilityNode]
    init(_ id: Int, _ children: [AccessibilityNode] = []) {
        self.id = id
        self.children = children
    }
}

private func findAccessibilityNode(_ root: AccessibilityNode?, _ targetId: Int) -> AccessibilityNode? {
    return nil
}

public func accessibilityElemSearchTree() {
    let node5 = AccessibilityNode(5)
    let node4 = AccessibilityNode(4)
    let node3 = AccessibilityNode(3, [node5])
    let node2 = AccessibilityNode(2, [node4])
    let root = AccessibilityNode(1, [node2, node3])

    if let result1 = findAccessibilityNode(root, 4) {
        print(result1.id) // Output: 4
    } else {
        print("Res1: Node not found")
    }

    if let result2 = findAccessibilityNode(root, 6) {
        print("Res2: \(result2.id)")
    } else {
        print("Res2: returned nil")
    }
}