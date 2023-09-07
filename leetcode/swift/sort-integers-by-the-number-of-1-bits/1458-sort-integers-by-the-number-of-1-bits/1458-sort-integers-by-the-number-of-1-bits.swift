class Solution {
    func sortByBits(_ arr: [Int]) -> [Int] {
        var counts = [Int](repeating: 0, count: 10001)

        for i in 0..<10001 {
            counts[i] = counts[i >> 1] + (i & 1)
        }

        var sorted = arr
        sorted.sort { (a, b) -> Bool in 
            if counts[a] == counts[b] {
                return a < b
            }

            return counts[a] < counts[b]
        }

        return sorted
    }
}