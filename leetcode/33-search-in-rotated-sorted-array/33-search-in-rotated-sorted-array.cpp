class Solution {
public:
    int search(vector<int>& nums, int target) {
        int low {0};
        int high = nums.size() - 1;
        
        while (low <= high)
        {
            int mid { low + (high - low) /2 };
            
            if (nums[mid] == target) return mid;
            
            if (nums[low] <= nums[mid])
            {
                if (nums[low] <= target && target <= nums[mid])
                {
                    high = --mid;
                }
                else
                {
                    low = ++mid;
                }
            }
            else
            {
                if (nums[mid] <= target && target <= nums[high])
                {
                    low = ++mid;
                }
                else
                {
                    high = --mid;
                }
            }
        }
        
        return -1;
    }
};