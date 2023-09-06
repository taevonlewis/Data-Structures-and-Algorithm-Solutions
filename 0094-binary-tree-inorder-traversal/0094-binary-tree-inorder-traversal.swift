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
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        if root == nil {
            return []
        }

        var res: [Int] = []

        dfs(root, &res)
        
        return res
    }

    func dfs(_ root: TreeNode?, _ arr: inout [Int]) -> [Int] {
        if root == nil {
            return arr
        }

        dfs(root?.left, &arr)
        arr.append(root!.val)
        dfs(root?.right, &arr)

        return arr
    }
}