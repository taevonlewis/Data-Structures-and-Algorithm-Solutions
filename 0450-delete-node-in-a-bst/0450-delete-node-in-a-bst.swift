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
    func deleteNode(_ root: TreeNode?, _ key: Int) -> TreeNode? {
        if root == nil {
            return nil
        }

        if key > root!.val {
            root?.right = deleteNode(root?.right, key)
        } else if key < root!.val {
            root?.left = deleteNode(root?.left, key)
        } else {
            if root?.left == nil {
                return root?.right
            } else if root?.right == nil {
                return root?.left
            } else {
                let min = minValNode(root?.right)
                root?.val = min!.val
                root?.right = deleteNode(root?.right, min!.val)
            }
        }

        return root
    }

    func minValNode(_ root: TreeNode?) -> TreeNode? {
        var curr = root
        
        while curr != nil && curr?.left != nil {
            curr = curr?.left
        }

        return curr
    }
}