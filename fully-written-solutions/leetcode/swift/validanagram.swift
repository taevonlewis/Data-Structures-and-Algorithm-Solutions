/*
242. Valid Anagram

Given two strings s and t, return true if t is an anagram of s, and false otherwise.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

Example 1:

Input: s = "anagram", t = "nagaram"
Output: true
Example 2:

Input: s = "rat", t = "car"
Output: false
 
Constraints:

1 <= s.length, t.length <= 5 * 104
s and t consist of lowercase English letters.
*/

class Solution {
    func validAnagram(_ s: String, _ t: String) -> Bool {
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

func test() {
    let sol = Solution()
    let testCases = [
        (("anagram", "ngamara"), true),
        (("rat", "car"), false),
    ]
    
    for (i, testCase) in testCases.enumerated() {
        let (input, expected) = testCase
        let (s, t) = input
        let result = sol.validAnagram(s, t)
        assert(result == expected, "Test case \(i + 1) failed. Expected \(expected), got \(result)")
        print("Test case \(i + 1) passed.")
    }
}

test()