class Solution {
public:
    int trap(vector<int>& height) {
        int answer {0};
        
        int left {0};
        int right = height.size() - 1;
        int maxLeft { height[left] };
        int maxRight { height[right] };
        
        while (left < right)
        {
            if (maxLeft <= maxRight)
            {
                ++left;
                maxLeft = max(height[left], maxLeft);
                answer += maxLeft - height[left];
            }
            else {
                --right;
                maxRight = max(height[right], maxRight);
                answer += maxRight - height[right];
            }
        }
        
        return answer;
    }
};