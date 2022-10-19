class Solution {
public:
    vector<int> topKFrequent(vector<int>& nums, int k) {
        /*
        create an unordered_map with int key (number) and int value (count)
        loop through each number
            add each number to map and increase its count
        create a vector of int vector (bucket) using the same size as nums vector + 1
            // +1 because of 0 indexing, we need it 1 indexing
                // 1 indexing because we're gonna use the count as key
                // EX. bucket 3 has a 1 inside since 1 occurs 3 times
            from the map, push each number (key) inside count (value) which creates buckets
        create a final result int vector
        loop through nums vector in reverse
            // we want the most occurred numbers first based on how many numbers we need
            if the result vector is >= in size than k (most frequent numbers we're looking for), break
            if the buckets vector of int vectors is not empty (the bucket has (a) value(s))
                insert each value from bucket (beginning to end) to end of result vector
        return result
        */
        
        unordered_map<int, int> numsCount;
        for (int i {0}; i < nums.size(); ++i)
        {
            ++numsCount[nums[i]];
        }
        
        vector<vector<int>> buckets(nums.size() + 1);
        for (auto it = numsCount.begin(); it != numsCount.end(); ++it)
        {
            buckets[it->second].push_back(it->first);
        }
        
        vector<int> result;
        for (int i = nums.size(); i >= 0; --i)
        {
            if (result.size() >= k) break;
            
            if (!buckets[i].empty())
            {
                result.insert(result.end(), buckets[i].begin(), buckets[i].end());
            }
        }
        
        return result;
    }
};