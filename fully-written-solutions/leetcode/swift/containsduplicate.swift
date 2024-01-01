/*
217. Contains Duplicate

Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

 
Example 1:

Input: nums = [1,2,3,1]
Output: true
Example 2:

Input: nums = [1,2,3,4]
Output: false
Example 3:

Input: nums = [1,1,1,3,3,4,3,2,4,2]
Output: true
 

Constraints:

1 <= nums.length <= 105
-109 <= nums[i] <= 109
*/

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var set: Set<Int> = []

        for num in nums {
            if set.contains(num) {
                return true
            }

            set.insert(num)
        }

        return false
    }
}

func test() {
    let sol = Solution()
    let testCases = [
        ([1, 2, 3, 4, 4, 5], true),
        ([1, 2, 3, 4, 5], false)
    ]
    
    for (i, testCase) in testCases.enumerated() {
        let (input, expected) = testCase
        let result = sol.containsDuplicate(input)
        assert(result == expected, "Test case \(i + 1) failed. Expected \(expected), got \(result)")
        print("Test case \(i + 1) passed.")
    }
}

test()