"""
Problem Summary: Determine true or false if what's typed should have been the name
Pattern/Approach: Two Pointers
Input: name = "saeed", typed = "ssaaedd"
Output: false because the e in typed name only occured once
Assumptions/Constraints: name and typed length 1+, only lowercase chars
Processes/Steps:
    create 2 points for both strings starting at 0
    iterate thru both strings
        if the current char for both are equal
            increment both pointers
        elif name pointer is > 0 and the prev name char is equal to current typed char
            increment typed pointer
        else
            return false
    iterate thru rest of typed string
        if prev name char is not equal to current typed char
            return false
        increment typed pointer
    return true or false if the name pointer is equal to the name string's length
Edge Cases: if input is valid
"""

class Solution:
    def isLongPressedName(self, name: str, typed: str) -> bool:
        i = 0
        j = 0

        while i < len(name) and j < len(typed):
            if name[i] == typed[j]:
                i += 1
                j += 1
            elif i > 0 and name[i - 1] == typed[j]:
                j += 1
            else:
                return False

        while j < len(typed):
            if name[i - 1] != typed[j]:
                return False
            j += 1
        
        return i == len(name)


      


