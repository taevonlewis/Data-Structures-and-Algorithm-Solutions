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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else {
            return []
        }

        var queue: [TreeNode?] = []
        var res: [[Int]] = []

        queue.append(root)

        while !queue.isEmpty {
            var arr: [Int] = []

            for _ in 0...queue.count - 1 {
                let curr = queue.removeFirst()

                if let val = curr?.val {
                    arr.append(val)
                }

                if let left = curr?.left {
                    queue.append(left)
                }

                if let right = curr?.right {
                    queue.append(right)
                }
            }
            
                res.append(arr)
        }

        return res
    }
}