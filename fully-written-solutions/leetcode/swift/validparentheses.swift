/*
20. Valid Parentheses
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.
Every close bracket has a corresponding open bracket of the same type.
 
Example 1:

Input: s = "()"
Output: true
Example 2:

Input: s = "()[]{}"
Output: true
Example 3:

Input: s = "(]"
Output: false
 
Constraints:

1 <= s.length <= 104
s consists of parentheses only '()[]{}'.
*/

class Solution {
    func isValid(_ str: String) -> Bool {
        let parenMap: [Character: Character] = ["(": ")", "[": "]", "{": "}"]
        var stack: [Character] = []

        for char in str {
            if parenMap.keys.contains(char) {
                stack.append(char)
            } else if stack.isEmpty || char != parenMap[stack.removeLast()] {
                return false
            } 
        }

        return stack.isEmpty
    }
}

func test() {
    let sol = Solution()
    let testCases = [
        ("()", true),
        ("()[]{}", true),
        ("(]", false)
    ]
    
    for (i, testCase) in testCases.enumerated() {
        let (input, expected) = testCase
        let (str) = input
        let result = sol.isValid(str)
        assert(result == expected, "Test case \(i + 1) failed. Expected \(expected), got \(result)")
        print("Test case \(i + 1) passed.")
    }
}

test()