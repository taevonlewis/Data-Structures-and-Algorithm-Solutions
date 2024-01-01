/*
49. Group Anagrams
Given an array of strings strs, group the anagrams together. You can return the answer in any order.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

Example 1:

Input: strs = ["eat","tea","tan","ate","nat","bat"]
Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
Example 2:

Input: strs = [""]
Output: [[""]]
Example 3:

Input: strs = ["a"]
Output: [["a"]]
 
Constraints:

1 <= strs.length <= 104
0 <= strs[i].length <= 100
strs[i] consists of lowercase English letters.
*/

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var res: [[Int]: [String]] = [:]
        let a = "a" as Character
        
        for str in strs {
            var key = [Int](repeating: 0, count: 26)

            for char in Array(str) {
                key[Int(char.asciiValue! - a.asciiValue!)] += 1
            }

            res[key, default: []].append(str)
        }

        return Array(res.values)
    }
}

let sol = Solution()
print(sol.groupAnagrams(["eat","tea","tan","ate","nat","bat"]))

// func test() {
//     let sol = Solution()
//     let testCases = [
//         (["eat","tea","tan","ate","nat","bat"], [["bat"],["nat","tan"],["ate","eat","tea"]])
//     ]
    
//     for (i, testCase) in testCases.enumerated() {
//         let (input, expected) = testCase
//         let strs = input
//         let result = sol.groupAnagrams(strs)
//         assert(result == expected, "Test case \(i + 1) failed. Expected \(expected), got \(result)")
//         print("Test case \(i + 1) passed.")
//     }
// }

// test()