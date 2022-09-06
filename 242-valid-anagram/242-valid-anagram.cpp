class Solution {
public:
    bool isAnagram(string s, string t) {
        if (s.length() != t.length()) return false;
        
        unordered_map<char, int> mp;
        
        for (int i {0}; i < s.length(); ++i)
        {
            ++mp[s[i] - 'a'];
        }
        
        for (int j {0}; j < t.length(); ++j)
        {
            --mp[t[j] - 'a'];
            if (mp[t[j] - 'a'] < 0)
            {
                return false;
            }
        }
        
        return true;
    }
};