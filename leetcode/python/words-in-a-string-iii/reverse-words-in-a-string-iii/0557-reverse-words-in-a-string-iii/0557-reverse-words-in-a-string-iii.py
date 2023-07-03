class Solution:
    def reverseWords(self, s: str) -> str:
        ex = s.split(" ")
        result = [] 

        for word in ex:
            reverseStr = word[::-1]
            result.append(reverseStr)

        return " ".join(result)