**Problem Title: Accessible Element Search in an Accessibility Tree**

**Problem Description:**

You are tasked with implementing a function for an accessibility-focused iOS application. The application has an accessibility tree where each node represents an accessible UI element. Each node has a unique identifier and may have children nodes representing nested accessible elements. Your goal is to search for a node with a specific identifier within this tree.

Each node in the accessibility tree is represented as follows:


class AccessibilityNode {
    var id: Int
    var children: [AccessibilityNode]

    init(_ id: Int, _ children: [AccessibilityNode] = []) {
        self.id = id
        self.children = children
    }
}


Write a function `findAccessibilityNode` that takes the root of the tree and an identifier `targetId`. The function should return the `AccessibilityNode` that has the `targetId`. If no such node exists, the function should return `nil`.

**Function Signature:**


func findAccessibilityNode(_ root: AccessibilityNode?, _ targetId: Int) -> AccessibilityNode?


**Constraints:**

1. The tree will have at most 1000 nodes.
2. Each node's `id` is unique and between 0 and 10000.
3. The `children` array can contain up to 10 nodes.
4. The root node is not `nil`.

**Example:**


let node5 = AccessibilityNode(5)
let node4 = AccessibilityNode(4)
let node3 = AccessibilityNode(3, [node5])
let node2 = AccessibilityNode(2, [node4])
let root = AccessibilityNode(1, [node2, node3])

if let result = findAccessibilityNode(root, 4) {
    print(result.id) // Output: 4
} else {
    print("Node not found")
}

if let result = findAccessibilityNode(root, 6) {
    print(result.id) // Output: Node not found
}


**Explanation:**

- In the first example, the function should find and return the node with `id` 4.
- In the second example, the function should return `nil` as there is no node with `id` 6 in the tree.

**Note:**

Ensure that your solution is efficient in terms of time and space complexity.