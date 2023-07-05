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
    def largestInteger(self, num: int):
        n = len(str(num))
        arr = [int(i) for i in str(num)]
        odd, even = [], []
        for i in arr:
            if i % 2 == 0:
                even.append(i)
            else:
                odd.append(i)
        odd.sort()
        even.sort()
        res = 0
        for i in range(n):
            if arr[i] % 2 == 0:
                res = res*10 + even.pop()
            else:
                res = res*10 + odd.pop()
        return res





