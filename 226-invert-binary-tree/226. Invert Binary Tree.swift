/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return nil
        }

        var queue: [TreeNode] = [root]

        while !queue.isEmpty {
            var curr: TreeNode = queue.removeFirst()

            let left = curr.left
            curr.left = curr.right
            curr.right = left

            if let leftNode = curr.left {
                queue.append(leftNode)
            }

            if let rightNode = curr.right {
                queue.append(rightNode)
            }
        }

        return root
    }
}