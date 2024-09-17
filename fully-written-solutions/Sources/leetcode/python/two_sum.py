from typing import List


class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]: # type: ignore
        prevMap = {}

        for i, n in enumerate(nums):
            diff = target - n
            if diff in prevMap:
                return [prevMap[diff], i]
            prevMap[n] = i

                
def test_two_sum():
    solution = Solution()
    test_cases = [
        ([2, 7, 11, 15], 9, [0, 1]),
        ([], 0, None),
        ([1], 1, None),
        ([0, 1, 2, 3], 0, None),
        ([-1, -2, -3, -4], -7, [2, 3]),
        ([3, 3], 6, [0, 1])
    ]

    for i, (nums, target, expected_result) in enumerate(test_cases):
        assert solution.twoSum(nums, target) == expected_result
        print(f"Test case {i+1} passed with expected result {expected_result}")

test_two_sum()

