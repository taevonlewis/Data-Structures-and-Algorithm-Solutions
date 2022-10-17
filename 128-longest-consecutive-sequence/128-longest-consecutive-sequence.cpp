class Solution {
public:
    int longestConsecutive(vector<int>& nums) {
        unordered_set<int> st(nums.begin(), nums.end());
        int longest {0};
        
        for (auto i : st)
        {
            if (st.find(i - 1) == st.end())
            {
                int length {0};
                
                while (st.find(i + length) != st.end())
                {
                    ++length;
                }
                
                longest = max(length, longest);
            }
        }
        
        
        return longest;
    }
};