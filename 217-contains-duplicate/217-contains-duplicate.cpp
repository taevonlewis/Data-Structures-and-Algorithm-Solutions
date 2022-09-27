class Solution {
public:
    bool containsDuplicate(vector<int>& nums) {
        unordered_map<int, int> dupes;
        
        for (int i {0}; i < nums.size(); ++i)
        {
            if (dupes.find(nums[i]) != dupes.end())
            {
                return true;
            }
            
            dupes[nums[i]]++;
        }
        
        return false;
    }
};