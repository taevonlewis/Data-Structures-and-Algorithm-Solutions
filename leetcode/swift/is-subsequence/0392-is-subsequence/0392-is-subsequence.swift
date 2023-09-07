class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s == "" && t != "" {
            return true
        } else if s.count > t.count {
            return false
        }

        var res = String()
        var i = 0
        var j = 0

        while j < t.count {
            if i == s.count {
                break
            }
            
            let sIdx = s.index(s.startIndex, offsetBy: i)
            let tIdx = t.index(t.startIndex, offsetBy: j) 
            if s[sIdx] == t[tIdx] {
                res += String(t[tIdx...tIdx])
                i += 1
                j += 1
            } else {
                j += 1
            }
        }

        return s == res
    }
}