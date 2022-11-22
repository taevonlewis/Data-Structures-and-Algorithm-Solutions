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
        
        queue<TreeNode*> queue;
        queue.push(root);
        
        while(!queue.empty())
        {
            TreeNode* curr { queue.front() };
            queue.pop();

            swap(curr->left, curr->right);
            
            if (curr->right != NULL)
            {
                queue.push(curr->right);
            }

            if (curr->left != NULL)
            {
                queue.push(curr->left);
            }
        }
        
        return root;
    }
};