"""
Problem Summary: Return the array of the absolute values of leftSum - rightSum
Pattern/Approach: Prefix Sum
Input: [10,4,8,3]
Output: [15,1,11,22] cause [|0 - 15|,|10 - 11|,|14 - 3|,|22 - 0|]
Assumptions/Constraints: nums length 1+, num 1+
Processes/Steps:

Edge Cases:
"""

class Solution:
    def leftRightDifference(self, nums: List[int]) -> List[int]:
        prefixSums = [0] * len(nums)
        for i in range(len(nums)):
            if i == 0:
                prefixSums[i] = nums[i]
            else:
                prefixSums[i] = prefixSums[i - 1] + nums[i]

        suffixSums = [0] * len(nums)
        for i in range(len(nums) - 1, -1, -1):
            if i == len(nums) - 1:
                suffixSums[i] = nums[i]
            else:
                suffixSums[i] = suffixSums[i + 1] + nums[i]

        res = [0] * len(nums)
        for i in range(len(res)):
            res[i] = abs(prefixSums[i] - suffixSums[i])

        return res
