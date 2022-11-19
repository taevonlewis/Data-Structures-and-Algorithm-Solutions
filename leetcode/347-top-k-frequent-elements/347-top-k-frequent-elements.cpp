class Solution {
public:
    vector<int> topKFrequent(vector<int>& nums, int k) {
        unordered_map<int, int> count;
        for (int i {0}; i < nums.size(); ++i)
        {
            ++count[nums[i]];
        }
        
        vector<vector<int>> buckets(nums.size() + 1);
        for (auto it = count.begin(); it != count.end(); ++it)
        {
            buckets[it->second].push_back(it->first);
        }
        
        vector<int> result;
        for (int j = nums.size(); j >= 0; --j)
        {
            if (result.size() >= k) break;
            
            if (!buckets[j].empty())
            {
                result.insert(result.end(), buckets[j].begin(), buckets[j].end());
            }
        }
        
        return result;
    }
};