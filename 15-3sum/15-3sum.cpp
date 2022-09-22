class Solution {
public:
    vector<vector<int>> threeSum(vector<int>& nums) {
        vector<vector<int>> result;
        int sum {0};
        
        sort(nums.begin(), nums.end());
        
        for (int i {0}; i < nums.size(); ++i)
        {
            if (nums[i] > 0)
            {
                break;
            }
            
            if (i > 0 && nums[i - 1] == nums[i]) 
            {
                continue;
            }
            
            int j = i + 1;
            int k = nums.size() - 1;
            
            while (j < k)
            {
                sum = nums[i] + nums[j] + nums[k];
                
                if (sum > 0)
                {
                    --k;
                }
                else if (sum < 0)
                {
                    ++j;
                }
                else
                {
                    result.push_back({nums[i], nums[j], nums[k]});
                    
                    int lastJ = nums[j];
                    int lastK = nums[k];
                    
                    while (j < k && nums[j] == lastJ)
                    {
                        ++j;
                    }

                    while (j < k && nums[k] == lastK)
                    {
                        --k;
                    }
                }
            }
        }
        
        return result;
    }
};