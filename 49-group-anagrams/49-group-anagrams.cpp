/*
    create a private deconstructor
        create a getKey string function that'll pass a string to groupAnagrams function
            create an 26 int vector to store each char's index and count
            loop through string
                add each char's index and increase count in vector
            create a string key that holds an empty string
            loop from index 0 - 26
                append the stringed char index from vector to key
            return string key
    
    groupAnagrams
        create an unordered_map to hold a string (key) and vector of strings (anagrams)
        loop through each string in string vector
            create a string key to hold the create key in the getKey function
                this will be the key or index of each string that is an anagram of another
            push in each string into the map given its key
        create the returned vector of vector strings
        loop through map
            push in each string (value) into vector of vector strings
        return vector of vector strings
*/

class Solution {
public:
    vector<vector<string>> groupAnagrams(vector<string>& strs) {
        unordered_map<string, vector<string>> tempAnagrams;
        for (int i {0}; i < strs.size(); ++i)
        {
            std::string key = getKey(strs[i]);
            tempAnagrams[key].push_back(strs[i]);
        }
        
        vector<vector<string>> anagrams;
        for (auto it = tempAnagrams.begin(); it != tempAnagrams.end(); ++it)
        {
            anagrams.push_back(it->second);
        }
        
        return anagrams;
    }
    
private:
    std::string getKey(std::string str) {
        unordered_map<int, int> count;
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