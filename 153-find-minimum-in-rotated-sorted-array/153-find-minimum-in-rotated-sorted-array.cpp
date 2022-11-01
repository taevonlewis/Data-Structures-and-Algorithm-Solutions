class Solution {
public:
    int findMin(vector<int>& nums) {
        int result {0};
        int low {0};
        int high = nums.size() - 1;
        
        while (low < high)
        {
            int mid { low + (high - low) / 2 };
            
            if (nums[mid] > nums[high])
            {
                low = ++mid;
            }
            else
            {
                high = mid;
            }
        }
        
        return nums[low];
    }
};