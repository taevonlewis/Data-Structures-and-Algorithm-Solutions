/*
    create a set to store chars
    create int longest to hold longest substring
    create i and j interators, both at 0
    while loop: from j to string length
        if (the char is not in the set)
            insert it in the set
            set longest to the max between longest and the window length (j - i + 1)
            increase j pointer
        else
            erase the char from the set
            increase i pointer
    return longest
*/

class Solution {
public:
    int lengthOfLongestSubstring(string s) {
        unordered_set<char> substr;
        int longest {0};
        int i {0};
        int j {0};
        
        while (j < s.length())
        {
            if (substr.find(s[j]) == substr.end())
            {
                substr.insert(s[j]);
                longest = max(longest, j - i + 1);
                ++j;
            } else {
                substr.erase(s[i]);
                ++i;
            }
        }
        
        return longest;
    }
};