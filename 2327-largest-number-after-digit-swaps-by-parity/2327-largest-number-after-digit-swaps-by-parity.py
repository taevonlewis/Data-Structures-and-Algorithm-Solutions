"""
Problem Summary: Swap odd digits with odd digits and evens with evens
Pattern/Approach: In-Place
Input: 1234
Output: 3412
Assumptions/Constraints: num will always be 1+
Processes/Steps:
    convert num to list of digits
    identify which digits should be swapped
    perform the swaps
    convert the list back to num
Edge Cases: if input is valid
"""

class Solution:
    def largestInteger(self, num: int) -> int:
        num_str = str(num)
        n = len(num_str)

        odd, even = [], []
        for digit in num_str:
            i = int(digit)
            if i % 2 == 0:
                heapq.heappush(even, -i)
            else:
                heapq.heappush(odd, -i)

        res = 0
        for digit in num_str:
            i = int(digit)
            if i % 2 == 0:
                res = res*10 - heapq.heappop(even)
            else:
                res = res*10 - heapq.heappop(odd)
        return res





