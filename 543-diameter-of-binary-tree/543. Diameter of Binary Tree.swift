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
    private var maxDiameter: Int = 0

    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        _ = depth(root)

        return maxDiameter
    }

    func depth(_ node: TreeNode?) -> Int {
        guard let node = node else {
            return 0
        }

        let leftHeight = depth(node.left)
        let rightHeight = depth(node.right)

        maxDiameter = max(maxDiameter, leftHeight + rightHeight)

        return max(leftHeight, rightHeight) + 1
    }
}