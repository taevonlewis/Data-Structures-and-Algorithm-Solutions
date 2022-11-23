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
    bool isSubtree(TreeNode* root, TreeNode* subRoot) {
        if (root == NULL) return false;
        
        if (sameTree(root, subRoot))
        {
            return true;
        }
        
        return isSubtree(root->left, subRoot) || isSubtree(root->right, subRoot);
    }
    
private:
    bool sameTree(TreeNode* root, TreeNode* subRoot) {
        //      RECURSIVE SOLUTION
        if (root == NULL && subRoot == NULL) return true;
        
        if (root == NULL || subRoot == NULL) return false;
        
        if (root->val != subRoot->val) return false;
        
        return sameTree(root->left, subRoot->left) && sameTree(root->right, subRoot->right);
        
        /*      ITERATIVE SOLUTION
        queue<TreeNode*> treeQueue;
        treeQueue.push(root);
        treeQueue.push(subRoot);
        
        while (!treeQueue.empty())
        {
            TreeNode* rootQueue { treeQueue.front() };
            treeQueue.pop();
            
            TreeNode* subRootQueue { treeQueue.front() };
            treeQueue.pop();
            
            if (rootQueue == NULL && subRootQueue == NULL) continue;
            
            if (rootQueue == NULL || subRootQueue == NULL) return false;
            
            if (rootQueue->val != subRootQueue->val) return false;
            
            treeQueue.push(rootQueue->left);
            treeQueue.push(subRootQueue->left);
            treeQueue.push(rootQueue->right);
            treeQueue.push(subRootQueue->right);
        }
        
        return true;
        */
    }
};