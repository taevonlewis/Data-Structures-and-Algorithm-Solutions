class Solution:
    def transpose(self, matrix: List[List[int]]) -> List[List[int]]:
        rows = len(matrix)
        cols = len(matrix[0])
        res = [ [0] * rows for i in range(cols) ]

        for r in range(rows):
            for c in range(cols):
                res[c][r] = matrix[r][c]

        return res