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
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        return isSubtreeHelper(root, subRoot)
    }

    func isSubtreeHelper(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        guard root != nil else {
            return false
        }

        return isSameTree(root, subRoot) || isSubtreeHelper(root?.left, subRoot) || isSubtreeHelper(root?.right, subRoot)
    }

    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        }

        if p == nil || q == nil {
            return false
        }

        return p!.val == q!.val && isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
    }
}