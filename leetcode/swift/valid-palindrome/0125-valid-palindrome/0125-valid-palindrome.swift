class Solution {
    func isPalindrome(_ str: String) -> Bool {
        var i: Int = 0
        var j: Int = str.count - 1
        let s = Array(str.lowercased())

        while i < j {
            while !s[i].isAlpha && i < j {
                i += 1
            }

            while !s[j].isAlpha && i < j {
                j -= 1
            }

            if s[i] != s[j] {
                return false
            }

            i += 1
            j -= 1
        }

        return true
    }
}

extension Character {
    var isAlpha: Bool {
        return isLetter || isNumber
    }
}