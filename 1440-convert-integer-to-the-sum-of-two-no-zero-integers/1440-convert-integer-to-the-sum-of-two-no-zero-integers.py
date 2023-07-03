"""
Problem Summary: Based on the target num, find no-zero ints whose sum equals the target
Pattern/Approach: Kinda Two Pointers
Input: 2
Output: [1, 1]
Assumptions/Constraints: target will be 2+, always 1 solution so return any, the added numbers can't be 0 
Processes/Steps:
    initialize i with n -> this will be used as a pointer
    while i > 0 (decreasing)
        if '0' in str(i) or same in str(n - i) -> if the number has a 0 in it
            i -= 1
            skip current iteration
        if current number is target - current num
            return [target - current num, current num]
        decrement i by 1
Edge Cases: if input is valid
"""

class Solution:
    def getNoZeroIntegers(self, n: int) -> List[int]:
        i = n

        while i > 0:
            if '0' in str(i) or '0' in str(n - i):
                i -= 1
                continue
            
            if n - i:
                return [n - i, i]

            i -= 1

        return []