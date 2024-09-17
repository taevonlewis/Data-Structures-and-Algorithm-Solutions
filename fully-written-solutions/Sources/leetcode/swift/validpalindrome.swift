/*
125. Valid Palindrome
A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string s, return true if it is a palindrome, or false otherwise.

Example 1:

Input: s = "A man, a plan, a canal: Panama"
Output: true
Explanation: "amanaplanacanalpanama" is a palindrome.
Example 2:

Input: s = "race a car"
Output: false
Explanation: "raceacar" is not a palindrome.
Example 3:

Input: s = " "
Output: true
Explanation: s is an empty string "" after removing non-alphanumeric characters.
Since an empty string reads the same forward and backward, it is a palindrome.
 
Constraints:

1 <= s.length <= 2 * 105
s consists only of printable ASCII characters.
*/

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

func test() {
    let sol = Solution()
    let testCases = [
        (("A man, a plan, a canal: Panama"), true),
        (("race a car"), false),
        ((""), true)
    ]
    
    for (i, testCase) in testCases.enumerated() {
        let (input, expected) = testCase
        let (str) = input
        let result = sol.isPalindrome(str)
        assert(result == expected, "Test case \(i + 1) failed. Expected \(expected), got \(result)")
        print("Test case \(i + 1) passed.")
    }
}

test()