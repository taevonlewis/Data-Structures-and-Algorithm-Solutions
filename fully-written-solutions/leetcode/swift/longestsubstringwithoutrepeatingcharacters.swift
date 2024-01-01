/*
3. Longest Substring Without Repeating Characters
Given a string s, find the length of the longest substring without repeating characters.

Example 1:

Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.
Example 2:

Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
Example 3:

Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

Constraints:

0 <= s.length <= 5 * 104
s consists of English letters, digits, symbols and spaces.
*/

class Solution {
    func lengthOfLongestSubstring(_ str: String) -> Int {
        guard str.count > 0 else {
            return 0
        }

        let s = Array(str)
        var window: Set<Character> = []
        var left: Int = 0
        var length: Int = 0

        for right in 0..<s.count {
            while window.contains(s[right]) {
                window.remove(s[left])
                left += 1
            }

            window.insert(s[right])
            length = max(length, right - left + 1)
        }

        return length
    }
}

func test() {
    let sol = Solution()
    let testCases = [
        (("pwwkew"), 3),
        (("abcabcbb"), 3),
        (("bbbbb"), 1)
    ]
    
    for (i, testCase) in testCases.enumerated() {
        let (input, expected) = testCase
        let (str) = input
        let result = sol.lengthOfLongestSubstring(str)
        assert(result == expected, "Test case \(i + 1) failed. Expected \(expected), got \(result)")
        print("Test case \(i + 1) passed.")
    }
}

test()