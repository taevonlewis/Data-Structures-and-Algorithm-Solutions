class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        unordered_map<int, int> answer;
        
        for (int i {0}; i < nums.size(); ++i)
        {
            if (answer.find(target - nums[i]) != answer.end())
            {
                return { answer[target - nums[i]], i };
            }
            
            answer[nums[i]] = i;
        }
        
        return { 0, -1 };
    }
};