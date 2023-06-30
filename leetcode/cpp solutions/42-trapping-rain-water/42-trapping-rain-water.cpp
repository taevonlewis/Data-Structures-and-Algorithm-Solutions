class Solution {
public:
    int trap(vector<int>& height) {
        int answer {0};
        
        int i {0};
        int j = height.size() - 1;
        int maxLeft { height[i] };
        int maxRight { height[j] };
        
        while (i < j)
        {
            if (maxLeft <= maxRight)
            {
                ++i;
                maxLeft = max(height[i], maxLeft);
                answer += maxLeft - height[i];
            }
            else
            {
                --j;
                maxRight = max(height[j], maxRight);
                answer += maxRight - height[j];
            }
        }
        
        return answer;
    }
};