/*
    create int vector of 26 to count amount of each char (26 uppercase chars in alphabet)
    create int result to store longest substring length
    create int maxCount to store the most frequent char
    create i and j iterators, both at 0
    while loop: from j to string length
        increase the count of each char at it's respective index in the alphabet
        set maxCount to the max between maxcount and most frequent char
        if (the window length - most frequent chars > k)
            // in any given window, if the changes needed are more than changes allowed (k)
            decrease the count for the char
            reduce window length, ++i
        set result to the max between result and the current window length
        increase window length, ++j
    return result
*/

class Solution {
public:
    int characterReplacement(string s, int k) {
        vector<int> count(26);
        int result {0};
        int maxCount {0};
        int i {0};
        int j {0};
        
        while (j < s.length())
        {
            ++count[s[j] - 'A'];
            maxCount = max(maxCount, count[s[j] - 'A']);
            
            if (j - i + 1 - maxCount > k)
            {
                --count[s[i] - 'A'];
                ++i;
            }
            
            result = max(result, j - i + 1);
            ++j;
        }
        
        return result;
    }
};