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
    int kthSmallest(TreeNode* root, int k) {
        int result {0};
        
        smallest(root, k, result);
        
        return result;
    }
    
private:
    void smallest(TreeNode* root, int& k, int& result) {
        if (root == NULL) return;
        
        smallest(root->left, k, result);
        --k;
        
        if (k == 0)
        {
            result = root->val;
            return;
        }
        
        smallest(root->right, k, result);
    }
};