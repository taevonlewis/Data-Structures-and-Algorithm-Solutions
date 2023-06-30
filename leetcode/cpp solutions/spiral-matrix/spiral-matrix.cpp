class Solution {
public:
    vector<int> spiralOrder(vector<vector<int>>& matrix) {
        vector<int> ans;
        int left {0};
        int right = matrix[0].size() - 1;
        int top {0};
        int bottom = matrix.size() - 1;
        
        while (left <= right && top <= bottom)
        {
            for (int j = left; j <= right; ++j)
            {
                ans.push_back(matrix[top][j]);
            }
            ++top;
            
            for (int i = top; i <= bottom; ++i)
            {
                ans.push_back(matrix[i][right]);
            }
            --right;
            
            if (top <= bottom)
            {
                for (int j = right; j >= left; --j)
                {
                    ans.push_back(matrix[bottom][j]);
                }
            }
            --bottom;
            
            if (left <= right)
            {
                for (int i = bottom; i >= top; --i)
                {
                    ans.push_back(matrix[i][left]);
                }
            }
            ++left;
        }
        
        return ans;
    }
};