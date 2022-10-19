class Solution {
public:
    bool isAnagram(string s, string t) {
        /*
        edge case: if the first string's size != second string's size, return false
        create a vector of 26 integers (entire lowercase alphabet)
            to store each char at it's respective index
                and increase it's count
                EX. 'e' - 'a' = 5 - 0 = index 5
        loop through first string
            add each chars index and increase count in vector
        loop through second string
            add each chars index and decrease count in vector
            if each chars count is less than 0, return false
        return true
        */
        
        if (s.length() != t.length()) return false;
        
        vector<int> count(26);
        
        for (int i {0}; i < s.length(); ++i)
        {
            ++count[s[i] - 'a'];
        }
        
        for (int j {0}; j < t.length(); ++j)
        {
            --count[t[j] - 'a'];
            
            if (count[t[j] - 'a'] < 0) return false;
        }
        
        return true;
    }
};