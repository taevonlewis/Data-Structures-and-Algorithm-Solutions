class Solution:
    def transpose(self, matrix: List[List[int]]) -> List[List[int]]:
        rows = len(matrix[0])
        cols = len(matrix)
        res = [ ]

        for r in range(rows):
            newR = []
            for c in range(cols):
                newR.append(matrix[c][r])
            res.append(newR)

        return res