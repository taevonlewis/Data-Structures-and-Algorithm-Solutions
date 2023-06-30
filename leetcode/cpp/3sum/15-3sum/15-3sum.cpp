class Solution {
public:
    vector<vector<int>> threeSum(vector<int>& nums) {
        vector<vector<int>> answer;
        int sum {0};
        
        sort(nums.begin(), nums.end());
        // -4, -1, -1, 0, 1, 2
        
        for (int i {0}; i < nums.size(); ++i)
        {
            if (nums[i] > 0) break;
            if (i > 0 && nums[i - 1] == nums[i]) continue;
            
            int j { i + 1 };
            int k = nums.size() - 1;
            
            while (j < k)
            {
                sum = nums[i] + nums[j] + nums[k];
                
                if (sum < 0)
                {
                    ++j;
                }
                else if (sum > 0)
                {
                    --k;
                }
                else
                {
                    answer.push_back({nums[i], nums[j], nums[k]});
                    
                    int jDupe { nums[j] };
                    int kDupe { nums[k] };
                    
                    while (j < k && jDupe == nums[j])
                    {
                        ++j;
                    }
                    
                    while (j < k && kDupe == nums[k])
                    {
                        --k;
                    }
                }
            }
        }
        
        return answer;
    }
};