class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        let rows = matrix.count
        let cols = matrix[0].count
        var mat = [[Int]](repeating: Array(repeating: 0, count: rows), count: cols)

        for r in 0..<rows {
            for c in 0..<cols {
                mat[c][r] = matrix[r][c]
            }
        }

        return mat
    }
}