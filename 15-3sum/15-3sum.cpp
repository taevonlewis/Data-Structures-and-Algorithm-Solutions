class Solution {
public:
    vector<vector<int>> threeSum(vector<int>& nums) {
        vector<vector<int>> answer;
        int sum {0};
        
        sort(nums.begin(), nums.end());
        
        for (int i {0}; i < nums.size(); ++i)
        {
            if (nums[i] > 0) break;
            if (i > 0 && nums[i] == nums[i - 1]) continue;
            
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
                else {
                    answer.push_back({nums[i], nums[j], nums[k]});
                    
                    int jDupe = nums[j];
                    int kDupe = nums[k];
                    
                    while (j < k && nums[j] == jDupe)
                    {
                        ++j;
                    }
                    
                    while (j < k && nums[k] == kDupe)
                    {
                        --k;
                    }
                }
            }
        }
        
        return answer;
    }
};