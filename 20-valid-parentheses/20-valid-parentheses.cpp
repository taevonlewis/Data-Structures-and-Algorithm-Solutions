class Solution {
public:
    bool isValid(string s) {
        stack<char> brackets;
        
        for (int i {0}; i < s.length(); ++i)
        {
            if (s[i] == ')' || s[i] == '}' || s[i] == ']')
            {
                if (brackets.empty()) return false;
                
                if (s[i] == ')' && brackets.top() != '(' || s[i] == '}' && brackets.top() != '{' || s[i] == ']' && brackets.top() != '[')
                {
                    return false;
                }
                
                brackets.pop();
            }
            else
            {
                brackets.push(s[i]);
            }
        }
        
        if (!brackets.empty()) return false;
        
        return true;
    }
};