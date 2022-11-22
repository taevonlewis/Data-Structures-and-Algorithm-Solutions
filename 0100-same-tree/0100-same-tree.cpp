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
    bool isSameTree(TreeNode* p, TreeNode* q) {
        queue<TreeNode*> queue;
        queue.push(p);
        queue.push(q);
        
        while (!queue.empty())
        {
            TreeNode* q2 = queue.front();
            queue.pop();
            TreeNode* q1 = queue.front();
            queue.pop();
            
            if (q1 == NULL && q2 == NULL) continue;
            if (q1 == NULL || q2 == NULL) return false;
            if (q1->val != q2->val) return false;
            
            
                queue.push(q1->left);
            
            
                queue.push(q2->left);
            
            
                queue.push(q1->right);
                queue.push(q2->right);
            
        }
        
        return true;
    }
};