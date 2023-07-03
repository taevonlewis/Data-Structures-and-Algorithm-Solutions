"""
Problem Summary: an int arr can be divided by 2 which is its amount of pairs (6 ints would mean 3 pairs, 6/2 or 3*2) and those pairs are equal ints
Pattern/Approach: HashMap 
Input: [3,2,3,2,2,2], 3 pairs (6 ints / 2), (2,2) (2,2) (3,3) = 3
Output: true
Assumptions/Constraints: no negative ints, if any ints have one occurrence = false
Processes/Steps: 
    create hashmap
    create res arr
    iterate over int arr
        add ints to map as key with count as value
    iterate over map
        if key count != 2
            return false
        else
            append (key, key) to res arr
    return res
Edge Cases: 
"""
class Solution:
    def divideArray(self, nums: List[int]) -> bool:
        mp = {}
        res = []

        for num in nums:
            if num not in mp:
                mp[num] = 1
            else:
                mp[num] += 1
        
        for key, val in mp.items():
            if val % 2 != 0:
                return False
            else:
                res.append((key, key))
            
        print(res)
        return True
