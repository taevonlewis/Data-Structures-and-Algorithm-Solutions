class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        var sMap: [Character: Int] = [:]
        var tMap: [Character: Int] = [:]
        
        for char in s {
            sMap[char, default: 0] += 1
            tMap[char, default: 0] += 1
        }

        for char in t {
            if let val = tMap[char] {
                tMap[char] = val - 1
            } else {
                return false
            }

            if let val2 = tMap[char] {
                if val2 < 0 {
                    return false
                }
            }
        }

        return true
    }
}