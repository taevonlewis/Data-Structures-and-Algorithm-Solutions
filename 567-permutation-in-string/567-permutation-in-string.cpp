/*
    public:
        base case: if the first string has more chars than the second, return false
        create int vector count of 26 to hold char occurrences at alphabetic index (26 lowercase letters in alphabet)
        loop thru first string
            increase char count of first string
            decrease char count of second string
            // basically, we want to check if the count of each char is even at 0
        conditional: call to ispermu function to check if the count is at 0 or not
            return true
        loop thru second string from first string length to second string length
            decrease each char's count
            if each char's count does NOT equal 0
                return false
        return true
    
    private:
        create ispermu function that holds a int vector
            loop from 0 to 26
                if each char's count does NOT equal 0
                    return false
            return true
*/

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
    
private:
    bool isPermu(vector<int> count) {
        for (int i {0}; i < 26; ++i)
        {
            if (count[i] != 0) return false;
        }
        
        return true;
    }
};