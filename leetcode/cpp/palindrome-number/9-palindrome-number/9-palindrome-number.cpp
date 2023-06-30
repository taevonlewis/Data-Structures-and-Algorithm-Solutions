class Solution {
public:
    bool isPalindrome(int x) {
        string str = to_string(x);
        int i {0};
        int j = str.length() - 1;
        cout << str;
        while (i < j)
        {
            if (str[i] != str[j]) return false;
            ++i;
            --j;
        }
        return true;
    }
};