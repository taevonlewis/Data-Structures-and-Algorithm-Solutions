class Solution {
public:
   bool isAnagram (std::string s, std::string t) {
  std::vector<int> m(26); 

  if (s.size() != t.size())  {
    std::cout << "false";
    return false; 
  }
    
  for (int i = 0; i < s.size(); i++) {
    m[s[i] - 'a']++; 
    m[t[i] - 'a']--; 
  }

  for (int i = 0; i < 26; i++) {
    if (m[i] > 0) {

      std::cout << "false"; 
      return false; 
    }
  }
  
  std::cout << "true"; 
  return true; 
}
};