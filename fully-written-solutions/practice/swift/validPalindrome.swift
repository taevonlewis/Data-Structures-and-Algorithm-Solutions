func validPalindrome(_ str: String) -> Bool {
    var l: String.Index = str.startIndex
    var r: String.Index = str.index(before: str.endIndex)

    while l < r {
        while l < r && !str[l].isAlphanumeric {
            l = str.index(after: l)
        }

        while l < r && !str[r].isAlphanumeric {
            r = str.index(before: r)
        }

        if str[l].lowercased() != str[r].lowercased() {
            return false
        }

        l = str.index(after: l)
        r = str.index(before: r)
    }

    return true
}

extension Character {
    var isAlphanumeric: Bool {
        return isLetter || isNumber
    }
}

print(validPalindrome("racecar"))
print(validPalindrome("kayak"))
print(validPalindrome("doug"))