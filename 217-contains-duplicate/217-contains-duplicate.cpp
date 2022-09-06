class Solution {
public:
    bool containsDuplicate(vector<int>& nums) {
        unordered_map<int, int> dupes;
        
        for (int i {0}; i < nums.size(); ++i)
        {
            ++dupes[nums[i]];
        }
        
        for (auto i : dupes)
        {
            if (i.second >= 2) return true;
        }
        
        return false;
    }
};