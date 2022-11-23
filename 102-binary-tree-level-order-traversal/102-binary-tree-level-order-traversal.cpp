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
    vector<vector<int>> levelOrder(TreeNode* root) {
        vector<vector<int>> result;
        
        if (root == NULL) return result;
        
        queue<TreeNode*> treeQueue;
        treeQueue.push(root);
        
        while (!treeQueue.empty())
        {
            int treeSize = treeQueue.size();
            vector<int> temp;
            
            for (int i {0}; i < treeSize; ++i)
            {
                TreeNode* curr { treeQueue.front() };
                treeQueue.pop();

                temp.push_back(curr->val);
                
                if (curr->left != NULL)
                {
                    treeQueue.push(curr->left);
                }

                if (curr->right != NULL)
                {
                    treeQueue.push(curr->right);
                }  
            }
            
            result.push_back(temp);
        }
        
        return result;
    }
};