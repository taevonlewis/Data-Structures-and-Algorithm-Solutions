/*
15. 3Sum
Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

Notice that the solution set must not contain duplicate triplets.

Example 1:

Input: nums = [-1,0,1,2,-1,-4]
Output: [[-1,-1,2],[-1,0,1]]
Explanation: 
nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
The distinct triplets are [-1,0,1] and [-1,-1,2].
Notice that the order of the output and the order of the triplets does not matter.
Example 2:

Input: nums = [0,1,1]
Output: []
Explanation: The only possible triplet does not sum up to 0.
Example 3:

Input: nums = [0,0,0]
Output: [[0,0,0]]
Explanation: The only possible triplet sums up to 0.
 
Constraints:

3 <= nums.length <= 3000
-105 <= nums[i] <= 105
*/

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let arr = nums.sorted()
        var res: [[Int]] = []

        for i in 0..<arr.count {
            if i > 0 && arr[i] == arr[i - 1] {
                continue
            }

            var j = i + 1
            var k = arr.count - 1

            while j < k {
                let sum = arr[i] + arr[j] + arr[k]

                if sum == 0 {
                    res.append([arr[i], arr[j], arr[k]])
                    
                    while j < k && arr[j] == arr[j + 1] {
                        j += 1
                    }

                    while j < k && arr[k] == arr[k - 1] {
                        k -= 1
                    }

                    j += 1
                    k -= 1
                } else if sum > 0 {
                    k -= 1
                } else {
                    j += 1
                }
            }
        }

        return res
    }
}

func test() {
    let sol = Solution()
    let testCases = [
        (([-1,0,1,2,-1,-4]), [[-1,-1,2],[-1,0,1]]), 
        (([0,1,1]), [])
    ]
    
    for (i, testCase) in testCases.enumerated() {
        let (input, expected) = testCase
        let (arr) = input
        let result = sol.threeSum(arr)
        assert(result == expected, "Test case \(i + 1) failed. Expected \(expected), got \(result)")
        print("Test case \(i + 1) passed.")
    }
}

test()