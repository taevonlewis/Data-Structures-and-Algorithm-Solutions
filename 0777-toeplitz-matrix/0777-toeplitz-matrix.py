"""
Problem Summary: If every diagonal from top-left and bottom-right is the same num, return true else return false
Pattern/Approach: Simple Iteration
Input: [[1,2,3,4],[5,1,2,3],[9,5,1,2]]
Output: true
Assumptions/Constraints: row length 1+, col length <= 20, num 0 - 99
Processes/Steps:
    
Edge Cases: 
"""

class Solution:
    def isToeplitzMatrix(self, matrix: List[List[int]]) -> bool:
        rows = len(matrix)
        cols = len(matrix[0])

        for i in range(rows - 1):
            for j in range(cols - 1):
                if matrix[i][j] != matrix[i + 1][j + 1]:
                    return False
            
        return True
