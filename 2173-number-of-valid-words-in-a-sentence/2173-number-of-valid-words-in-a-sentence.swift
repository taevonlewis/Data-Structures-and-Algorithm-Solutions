class Solution {
    func countValidWords(_ sentence: String) -> Int {
        let words = sentence.split(separator: " ")
        var res = 0
        let punc = ".,!"
        
        for word in words {
            var valid = true
            var hyphenSeen = false
            
            for (index, char) in word.enumerated() {
                if char.isNumber || (punc.contains(char) && index != word.count - 1) {
                    valid = false
                    break
                }
                
                if char == "-" {
                    let lastChar = word[word.index(before: word.endIndex)]
                    if hyphenSeen || index == 0 || index == word.count - 1 || (index == word.count - 2 && punc.contains(lastChar)) {
                        valid = false
                        break
                    }
                    
                    hyphenSeen = true
                }
            }
            
            if valid {
                res += 1
            }
        }
        
        return res
    }
}
