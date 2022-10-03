class Solution {
public:
    vector<vector<string>> groupAnagrams(vector<string>& strs) {
        unordered_map<string, vector<string>> mp;
        
        for (int i {0}; i < strs.size(); ++i)
        {
            std::string key = getKey(strs[i]);
            mp[key].push_back(strs[i]);
        }
        
        vector<vector<string>> anagrams;
        for (auto i : mp)
        {
            anagrams.push_back(i.second);
        }
        
        return anagrams;
    }
    
private:
    std::string getKey(std::string str) {
        vector<int> count(26);
            
        for (int i {0}; i < str.size(); ++i)
        {
            ++count[str[i] - 'a'];
        }
            
        std::string key {""};
        for (int i {0}; i < 26; ++i)
        {
            key.append(to_string(count[i] - 'a'));
        }
        
        return key;
    }
};