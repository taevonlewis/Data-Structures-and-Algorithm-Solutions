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
    TreeNode* invertTree(TreeNode* root) {
        if (root == NULL) return NULL;
        
        //      RECURSIVE SOLUTION
        swap(root->left, root->right);
        
        invertTree(root->left);
        invertTree(root->right);
        
        
        /*      ITERATIVE SOLUTION
        queue<TreeNode*> treeQueue;
        treeQueue.push(root);
        
        while (!treeQueue.empty())
        {
            TreeNode* curr { treeQueue.front() };
            treeQueue.pop();
            
            swap(curr->left, curr->right);
            
            if (curr->left != NULL) 
            {
                treeQueue.push(curr->left);
            }
            
            if (curr->right != NULL)
            {
                treeQueue.push(curr->right);
            }
        }
        */
        return root;
    }
};