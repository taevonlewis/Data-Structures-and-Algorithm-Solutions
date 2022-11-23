/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode() : val(0), left(nullptr), right(nullptr) {}
 *     TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
 *     TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
 * };
 */
class Solution {
public:
    int maxDepth(TreeNode* root) {
        if (root == NULL) return 0;
        
            // RECURSIVE SOLUTION
        // return 1 + max(maxDepth(root->left), maxDepth(root->right));
        
            // ITERATIVE SOLUTION
        queue<TreeNode*> treeQueue;
        treeQueue.push(root);
        
        int result {0};
        
        while (!treeQueue.empty())
        {
            int treeSize = treeQueue.size();
            for (int i {0}; i < treeSize; ++i)
            {
                TreeNode* curr { treeQueue.front() };
                treeQueue.pop();
                
                if (curr->left != NULL)
                {
                    treeQueue.push(curr->left);
                }
                
                if (curr->right != NULL)
                {
                    treeQueue.push(curr->right);
                }
            }
            
            ++result;
        }
        
        return result;
    }
};