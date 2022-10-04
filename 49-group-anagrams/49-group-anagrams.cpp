class Solution {
public:
    vector<vector<std::string>> groupAnagrams(vector<std::string>& strs) {
        unordered_map<std::string, vector<std::string>> mp;
        
        for (int i {0}; i < strs.size(); ++i)
        {
            std::string key = getKey(strs[i]);
            mp[key].push_back(strs[i]);
        }
        
        vector<vector<std::string>> anagrams;
        for (auto i = mp.begin(); i != mp.end(); ++i)
        {
            anagrams.push_back(i->second);
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
            key.append(to_string(count[i] + 'a'));
        }
        
        return key;
    }
};