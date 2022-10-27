class Solution {
public:
    bool isValid(string s) {
        stack<char> st;
        
        for (int i {0}; i < s.length(); ++i)
        {
            if (s[i] == ')' || s[i] == '}' || s[i] == ']')
            {
                if (st.empty()) return false;
                
                if (s[i] == ')' && st.top() != '(' || s[i] == '}' && st.top() != '{' || s[i] == ']' && st.top() != '[')
                {
                    return false;
                }
                
                st.pop();
            } else {
                if (s[i] == '(' || s[i] == '{' || s[i] == '[')
                {
                    st.push(s[i]);
                }
            }
        }
        
        if (!st.empty()) return false;
        
        return true;
    }
};