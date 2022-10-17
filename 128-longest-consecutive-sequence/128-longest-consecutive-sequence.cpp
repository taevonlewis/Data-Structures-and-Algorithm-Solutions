class Solution {
public:
    int longestConsecutive(vector<int>& nums) {
        unordered_set<int> st(nums.begin(), nums.end());
        int longest {0};
        
        for (auto i : st)
        {
            if (!st.count(i - 1))
            {
                int length {0};
                
                while (st.count(i + length))
                {
                    ++length;
                }
                
                longest = max(length, longest);
            }
        }
        
        
        return longest;
    }
};