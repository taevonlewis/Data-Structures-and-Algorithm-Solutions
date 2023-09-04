class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var l: Int = 0
        var r: Int = s.count - 1
        let str = Array(s.lowercased())

        while l < r {
            while !str[l].isAlphanumeric && l < r {
                l += 1
            } 

            while !str[r].isAlphanumeric && l < r {
                r -= 1
            }

            if str[l] != str[r] {
                return false
            }

            l += 1
            r -= 1
        }

        return true
    }
}

extension Character {
        var isAlphanumeric: Bool {
            return isNumber || isLetter
        }
    }