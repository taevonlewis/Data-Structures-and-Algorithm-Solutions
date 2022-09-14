class Solution {
public:
    vector<int> twoSum(vector<int>& numbers, int target) {
        vector<int> res;
        unordered_map<int, int> mp;
        
        for (int i {0}; i < numbers.size(); ++i)
        {
            if (mp.find(target - numbers[i]) != mp.end())
            {
                res.push_back(mp[target - numbers[i]] + 1);
                res.push_back(i + 1);
            }
            else
            {
                mp[numbers[i]] = i;
            }
        }
        
        return res;
    }
};