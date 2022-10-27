class Solution {
public:
    string minWindow(string s, string t) {
        unordered_map<char, int> mp;
        for (int i {0}; i < t.length(); ++i)
        {
            ++mp[t[i]];
        }
        
        int i {0};
        int j {0};
        
        int counter = t.size();
        
        int minStart {0};
        int minLength {INT_MAX};
        
        while (j < s.size())
        {
            if (mp[s[j]] > 0)
            {
                --counter;
            }
            --mp[s[j]];
            ++j;
            
            while (counter == 0)
            {
                if (j - i < minLength)
                {
                    minStart = i;
                    minLength = j - i;
                }
                
                ++mp[s[i]];
                
                if (mp[s[i]] > 0) 
                {
                    ++counter;
                }
                
                ++i;
            }
        }
        
        if (minLength != INT_MAX)
        {
            return s.substr(minStart, minLength);
        }
        
        return "";
    }
};