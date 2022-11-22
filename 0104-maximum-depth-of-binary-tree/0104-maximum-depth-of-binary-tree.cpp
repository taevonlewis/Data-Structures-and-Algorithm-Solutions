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
        
        queue<TreeNode*> queue;
        queue.push(root);
        
        int result {0};
        while (!queue.empty())
        {
            int count = queue.size();
            for (int i {0}; i < count; ++i)
            {
                TreeNode* curr { queue.front() };
                queue.pop();
                
                if (curr->left != NULL)
                {
                    queue.push(curr->left);
                }
                
                if (curr->right != NULL)
                {
                    queue.push(curr->right);
                }
            }
            
            ++result;
        }
        
        return result;
    }
};