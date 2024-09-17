/*
238. Product of Array Except Self
Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

You must write an algorithm that runs in O(n) time and without using the division operation.

Example 1:

Input: nums = [1,2,3,4]
Output: [24,12,8,6]
Example 2:

Input: nums = [-1,1,0,-3,3]
Output: [0,0,9,0,0]
 
Constraints:

2 <= nums.length <= 105
-30 <= nums[i] <= 30
The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
*/

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var res = [Int](repeating: 1, count: nums.count)
        
        var prefix = 1
        for i in 0..<nums.count {
            res[i] = prefix
            prefix *= nums[i]
        }
        
        var postfix = 1
        for i in stride(from: nums.count-1, to: -1, by: -1) {
            res[i] *= postfix
            postfix *= nums[i]
        }

        return res
    }
}

func test() {
    let sol = Solution()
    let testCases = [
        (([1,2,3,4]), [24,12,8,6]),
        (([-1,1,0,-3,3]), [0,0,9,0,0])
    ]
    
    for (i, testCase) in testCases.enumerated() {
        let (input, expected) = testCase
        let nums = input
        let result = sol.productExceptSelf(nums)
        assert(result == expected, "Test case \(i + 1) failed. Expected \(expected), got \(result)")
        print("Test case \(i + 1) passed.")
    }
}

test()