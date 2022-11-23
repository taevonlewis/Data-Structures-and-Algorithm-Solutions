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
//      RECURSIVE SOLUTION
// public:
//     bool isValidBST(TreeNode* root) {
//         TreeNode* prev { NULL };
        
//         return validateNodes(root, prev);
//     }
    
// private:
//     bool validateNodes(TreeNode* root, TreeNode*& prev) {
//         if (root == NULL) return true;
        
//         if (!validateNodes(root->left, prev))
//         {
//             return false;
//         }
        
//         if (prev != NULL && prev->val >= root->val)
//         {
//             return false;
//         }
        
//         prev = root;
        
//         if (!validateNodes(root->right, prev))
//         {
//             return false;
//         }
        
//         return true;
//     }
    
//      ITERATIVE SOLUTION
public:
    bool isValidBST(TreeNode* root) {
        stack<TreeNode*> treeStack;
        TreeNode* prev { NULL };
        
        while (!treeStack.empty() || root != NULL)
        {
            while (root != NULL)
            {
                treeStack.push(root);
                root = root->left;
            }
            
            root = treeStack.top();
            treeStack.pop();
            
            if (prev != NULL && prev->val >= root->val)
            {
                return false;
            }
            
            prev = root;
            root = root->right;
        }
        
        return true;
    }
};