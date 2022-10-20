class Solution {
public:
    vector<vector<string>> groupAnagrams(vector<string>& strs) {
        unordered_map<string, vector<string>> tempAna;
        for (int i {0}; i < strs.size(); ++i)
        {
            std::string key = getKey(strs[i]);
            tempAna[key].push_back(strs[i]);
        }
        
        vector<vector<string>> anagrams;
        for (auto it = tempAna.begin(); it != tempAna.end(); ++it)
        {
            anagrams.push_back(it->second);
        }
        
        return anagrams;
    }
    
private:
    std::string getKey(std::string str) {
        vector<int> count(26);
        for (int i {0}; i < str.length(); ++i)
        {
            ++count[str[i] - 'a'];
        }
        
        std::string key {""};
        for (int j {0}; j < 26; ++j)
        {
            key.append(to_string(count[j] + 'a'));
        }
        
        return key;
    }
};