class Solution {
public:
    int longestConsecutive(vector<int>& nums) {
        unordered_set<int> st(nums.begin(), nums.end());
        int longest {0};
        
        for (int i {0}; i < nums.size(); ++i)
        {
            if (st.find(nums[i] - 1) == st.end())
            {
                int length {0};
                
                while (st.find(nums[i] + length) != st.end())
                {
                    ++length;
                }
                
                longest = max(length, longest);
            }
        }
        
        
        return longest;
    }
};