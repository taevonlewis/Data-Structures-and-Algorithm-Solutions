class Solution {
public:
    vector<int> topKFrequent(vector<int>& nums, int k) {
        unordered_map<int, int> mp;
        for (int i {0}; i < nums.size(); ++i)
        {
            ++mp[nums[i]];
        }
        
        vector<vector<int>> buckets(nums.size() + 1);
        for (auto i = mp.begin(); i != mp.end(); ++i)
        {
            buckets[i->second].push_back(i->first);
        }
        
        vector<int> results;
        for (int i = nums.size(); i >= 0; --i)
        {
            if (results.size() >= k) break;
            
            if (!buckets[i].empty())
            {
                results.insert(results.end(), buckets[i].begin(), buckets[i].end());
            }
        }
        
        return results;
    }
};