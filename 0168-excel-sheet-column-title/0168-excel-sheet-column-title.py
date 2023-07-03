"""
Problem Summary: Using base conversion (specifically base-26) from the column number to it's character representation
Pattern/Approach: Base conversion, base-10 to base-26
Input: 701
Output: "ZY"
Assumptions/Constraints: input will be 1+ 
Processes/Steps:
    create alphabet string containing each char
    create res string
    while num != 0
        decrement num by 1 to account for 0-indexing
        set index to num remainder
        prepend alphabet[num] + res
        update num to num // 26
    return res
Edge Cases: if input is valid
"""

class Solution:
    def convertToTitle(self, columnNumber: int) -> str:
        alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        res = ""

        if 1 <= columnNumber <= len(alphabet):
            res += alphabet[columnNumber - 1]
            return res

        while columnNumber != 0:
            columnNumber -= 1
            index = columnNumber % 26
            res = alphabet[index] + res
            columnNumber = columnNumber // 26

        return res