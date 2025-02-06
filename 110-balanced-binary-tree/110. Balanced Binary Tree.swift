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
    func isBalanced(_ root: TreeNode?) -> Bool {
        func checkBalance(_ node: TreeNode?) -> (Bool, Int) {
            guard let node = node else { return (true, 0) }
            let (leftBalanced, leftHeight) = checkBalance(node.left)
            let (rightBalanced, rightHeight) = checkBalance(node.right)
            let balanced = leftBalanced && rightBalanced && abs(leftHeight - rightHeight) <= 1
            let height = max(leftHeight, rightHeight) + 1
            return (balanced, height)
        }
        return checkBalance(root).0
    }
}