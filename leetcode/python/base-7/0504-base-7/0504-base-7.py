"""
Pattern: No exact pattern, mathmatical manipulation
input: 100
expected output:
    100 / 7 = 14 w/remainder 2
    14 / 7 = 2 w/ remainder 0
    2 / 7 = 0 with remainder 2
    result = 202
process:
    need base conversion
        split the digits
        create result string
        create boolean neg flag variable
        if arr[0] == '-', set neg to true and pop it
        loop through num array itself
            set temp to num / 7
            if temp == 0, break
            else add num to string
        return result
# for i in reversed(nums):
        #     temp = int(i) % 7

        #     if temp == 0:
        #         break
        #     else:
        #         result += str(temp)
"""


class Solution:
    def convertToBase7(self, num: int) -> str:
        if num == 0:
            return "0"

        result = ""
        neg = False
        if num < 0:
            neg = True

        num = abs(num)

        while num != 0:
            rem = num % 7
            num = num // 7

            result = str(rem) + result

        if neg:
            return f'-{result}'
        else:
            return result




