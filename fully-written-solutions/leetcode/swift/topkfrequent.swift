/*
347. Top K Frequent Elements
Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.

Example 1:

Input: nums = [1,1,1,2,2,3], k = 2
Output: [1,2]
Example 2:

Input: nums = [1], k = 1
Output: [1]
 
Constraints:

1 <= nums.length <= 105
-104 <= nums[i] <= 104
k is in the range [1, the number of unique elements in the array].
It is guaranteed that the answer is unique.
*/

class Solution {
    func topKElements(_ nums: [Int], _ k: Int) ->  [Int] {
        var map: [Int: Int] = [:]
        for num in nums {
            map[num, default: 0] += 1
        }

        var buckets: [[Int]] = [[Int]](repeating: [], count: nums.count + 1)
        for (key, val) in map {
            buckets[val].append(key)
        }

        var res: [Int] = []
        for i in stride(from: buckets.count - 1, through: 0, by: -1) {
            if res.count == k {
                break
            }

            res += buckets[i]
        }

        return res
    }
}

func test() {
    let sol = Solution()
    let testCases = [
        (([1, 1, 1, 2, 2, 3], 2), [1, 2]),
        (([1], 1), [1])
    ]
    
    for (i, testCase) in testCases.enumerated() {
        let (input, expected) = testCase
        let (nums, k) = input
        let result = sol.topKElements(nums, k)
        assert(result == expected, "Test case \(i + 1) failed. Expected \(expected), got \(result)")
        print("Test case \(i + 1) passed.")
    }
}

test()