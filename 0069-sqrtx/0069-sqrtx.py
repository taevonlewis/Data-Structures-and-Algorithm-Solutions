"""
Problem Summary: Return the sqrt of num rounded down without using built-in function/operator
Pattern/Approach: Binary Search
Input: 8
Output: 2 cause even though sqrt 8 = 2.82842, round down
Assumptions/Constraints: num will be non-negative
Processes/Steps:
    create start and end pointers (end is num)
    create res int
    while start to end
        set mid to rounded down num / 2
        if num is < mid * mid
            set end to mid - 1
        else
            res = mid
            move start up 1
    return res

Edge Cases: if num is zero return 0
"""

class Solution:
    def mySqrt(self, x: int) -> int:
        if x == 0:
            return 0

        start = 1
        end = x
        res = 0

        while start <= end:
            mid = (start + end) // 2

            if mid * mid == x:
                return mid
            elif mid * mid < x:
                res = mid
                start = mid + 1
            else:
                end = mid - 1
        
        return res