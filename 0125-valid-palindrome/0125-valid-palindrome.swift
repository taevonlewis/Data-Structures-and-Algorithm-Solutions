class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var str = Array(s.lowercased())
        var i: Int = 0
        var j: Int = s.count - 1

        while i < j {
            while !str[i].isAlpha && i < j {
                i += 1
            }

            while !str[j].isAlpha && i < j {
                j -= 1
            }

            if str[i] != str[j] {
                print(str[i], str[j])
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
        return isNumber || isLetter
    }
}