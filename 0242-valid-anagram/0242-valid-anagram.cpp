class Solution {
public:
    bool isAnagram (std::string s, std::string t) {
  std::unordered_map <char, int> m; 

  if (s.size() != t.size())  {
    std::cout << "false";
    return false; 
  }
    
  for (int i = 0; i < s.size(); i++) {
    m[s[i]]++; 
  }

  for (int i = 0; i < t.size(); i++) {
    m[t[i]]--; 
  }

  for (auto i : m) {
    if (i.second != 0) {

      std::cout << "false"; 
      return false; 
    }
  }
  
  std::cout << "true"; 
  return true; 
}
};