class Solution {
public:
    bool checkInclusion(string s1, string s2) {
        if (s1.length() > s2.length()) return false;
        
        vector<int> count(26);
        for (int i {0}; i < s1.length(); ++i)
        {
            ++count[s1[i] - 'a'];
            --count[s2[i] - 'a'];
        }
        
        if (isPermu(count))
        {
            return true;
        }
        
        for (int j = s1.length(); j < s2.length(); ++j)
        {
            --count[s2[j] - 'a'];
            ++count[s2[j - s1.length()] - 'a'];
            
            if (isPermu(count))
            {
                return true;
            }
        }
        
        return false;
    }
    
    bool isPermu(vector<int> count) {
        for (int i {0}; i < count.size(); ++i)
        {
            if (count[i] != 0) return false;
        }
        
        return true;
    }
};