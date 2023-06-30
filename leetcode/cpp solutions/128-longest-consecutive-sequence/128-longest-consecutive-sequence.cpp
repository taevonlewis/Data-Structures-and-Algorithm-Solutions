class Solution {
public:
    int longestConsecutive(vector<int>& nums) {
        unordered_set<int> numsSet(nums.begin(), nums.end());
        int longestSeq {0};
        
        for (int i {0}; i < nums.size(); ++i)
        {
            if (numsSet.find(nums[i] - 1) == numsSet.end())
            {
                int length {1};
                
                while (numsSet.find(nums[i] + length) != numsSet.end())
                {
                    ++length;
                }
                
                longestSeq = max(longestSeq, length);
            }
        }
        
        return longestSeq;
    }
};