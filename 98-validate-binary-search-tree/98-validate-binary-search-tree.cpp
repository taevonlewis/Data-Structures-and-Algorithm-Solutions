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
    
public:
    bool isValidBST(TreeNode* root) {
        stack<TreeNode*> rootStack;
        TreeNode* prev { NULL };
        
        while (!rootStack.empty() || root != NULL)
        {
            while (root != NULL)
            {
                rootStack.push(root);
                root = root->left;
            }
            
            root = rootStack.top();
            rootStack.pop();
            
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