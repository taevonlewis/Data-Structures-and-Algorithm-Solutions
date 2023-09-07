/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var neighbors: [Node?]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.neighbors = []
 *     }
 * }
 */

class Solution {
    var clonedNodes = [Node? : Node?]()

    func cloneGraph(_ node: Node?) -> Node? {
        guard let node = node else { return nil }

        if clonedNodes[node] != nil {
            return clonedNodes[node]!
        }

        let newNode = Node(node.val)
        clonedNodes[node] = newNode

        for neighbor in node.neighbors {
            newNode.neighbors.append(cloneGraph(neighbor))
        }

        return newNode    
    }
}