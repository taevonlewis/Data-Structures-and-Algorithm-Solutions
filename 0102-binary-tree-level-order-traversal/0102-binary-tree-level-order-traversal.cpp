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
        vector<vector<int>> res;
        if (root == NULL) return res;
        
        vector<int> tmp;
        
        queue<TreeNode*> q;
        q.push(root);
        res.push_back({root->val});
        
        while (q.size() != 0)
        {
            int count = q.size();
            for (int i {0}; i < count; ++i)
            {
                TreeNode* curr = q.front();
                q.pop();
                
                if (curr->left != NULL)
                {
                    q.push(curr->left);
                    tmp.push_back(curr->left->val);
                }
                
                if (curr->right != NULL)
                {
                    q.push(curr->right);
                    tmp.push_back(curr->right->val);
                }
            }
            if (!tmp.empty())
            {
                res.push_back(tmp);
                tmp.clear();
            }
        }
        
        return res;
    }
};