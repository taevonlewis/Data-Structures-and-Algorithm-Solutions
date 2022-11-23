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
        //      RECURSIVE SOLUTION
//         if (p == NULL && q == NULL) return true;
        
//         if (p == NULL || q == NULL) return false;
        
//         if (p->val != q->val) return false;
        
//         return isSameTree(p->left, q->left) && isSameTree(p->right, q->right);
        
        //      ITERATIVE SOLUTION
        queue<TreeNode*> treeQueue;
        treeQueue.push(p);
        treeQueue.push(q);
        
        while (!treeQueue.empty())
        {
            TreeNode* pQueue { treeQueue.front() };
            treeQueue.pop();
            
            TreeNode* qQueue { treeQueue.front() };
            treeQueue.pop();
            
            if (pQueue == NULL && qQueue == NULL) continue;
            
            if (pQueue == NULL || qQueue == NULL) return false;
            
            if (pQueue->val != qQueue->val) return false;
            
            treeQueue.push(pQueue->left);
            treeQueue.push(qQueue->left);
            treeQueue.push(pQueue->right);
            treeQueue.push(qQueue->right);
        }
        
        return true;
    }
};