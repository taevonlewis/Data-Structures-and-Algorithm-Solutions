class Solution {
public:
    std::vector<std::vector<std::string>> groupAnagrams(std::vector<std::string> strs) {
        std::unordered_map<std::string, std::vector<std::string>> ana;
        for (int i {0}; i < strs.size(); ++i)
        {
            std::string key = getKey(strs[i]);
            ana[key].push_back(strs[i]);
        }
        
        std::vector<std::vector<std::string>> results;
        for (auto it = ana.begin(); it != ana.end(); ++it)
        {
            results.push_back(it->second);
        }
        
        return results;
    }
    
private:
    std::string getKey(std::string str) {
        std::vector<int> count(26);
        for (int i {0}; i < str.length(); ++i)
        {
            ++count[str[i] - 'a'];
        }
        
        std::string key {""};
        for (int j {0}; j < 26; ++j)
        {
            key.append(std::to_string(count[j] + 'a'));
        }
        
        return key;
    }
};