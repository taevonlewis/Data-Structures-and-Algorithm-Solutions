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
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }

        var globalMax: Int = 0
        maxDepth(root, maxx: &globalMax)

        return globalMax
    }

    func maxDepth(_ node: TreeNode?, maxx: inout Int) -> Int {
        guard let node = node else {
            return 0
        }

        let leftMax = maxDepth(node.left, maxx: &maxx)
        let rightMax = maxDepth(node.right, maxx: &maxx)

        let diameter = leftMax + rightMax
        maxx = max(maxx, diameter)

        return 1 + max(leftMax, rightMax)
    }
}