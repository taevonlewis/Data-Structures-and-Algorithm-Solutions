class Solution {
public:
    int countSubstrings(string s) {
        int result = 1;
        
        for (int i = 0; i < s.size() - 1; i++) {
            middleOut(s, i, i, result);
            middleOut(s, i, i + 1, result);
        }
        
        return result;
    }
private:
    void middleOut(string s, int i, int j, int& result) {
        while (i >= 0 && j < s.size() && s[i] == s[j]) {
            ++result;
            i--;
            j++;
        }
    }
};