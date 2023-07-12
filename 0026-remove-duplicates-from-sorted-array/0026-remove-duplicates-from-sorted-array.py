"""
Problem Summary: Given an int array, remove dupes in-place and return number of unique elements
Pattern/Approach: Two Pointers
Input: [0,0,1,1,1,2,2,3,3,4]
Output: 5 since the end array will be [0,1,2,3,4]
Assumptions/Constraints: int array length 1+, ints range from -100 - 100,
int array sorted in non-decreasing order
Processes/Steps:
    
Edge Cases: 
"""

class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        i = 1
        cnt = 0

        while i < len(nums):
            if nums[i] != nums[cnt]:
                cnt += 1
                nums[cnt] = nums[i]
            
            i += 1
        
        return cnt + 1
