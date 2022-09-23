class Solution {
public:
    int maxArea(vector<int>& height) {
        int area {0};
        int tempArea {0};
        
        int left {0};
        int right = height.size() - 1;
        
        while (left < right)
        {
            tempArea = (right - left) * min(height[left], height[right]);
            area = max(tempArea, area);
            
            if (height[left] >= height[right])
            {
                --right;
            }
            else
            {
                ++left;
            }
        }
        
        return area;
    }
};