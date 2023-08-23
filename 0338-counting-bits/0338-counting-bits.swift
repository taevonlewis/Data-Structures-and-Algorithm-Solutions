class Solution {
    func countBits(_ n: Int) -> [Int] {
        var res = [Int](repeating: 0, count: n + 1)

        for num in 0...n{
            var count = 0
            var val = num

            while val != 0 {
                if val & 1 == 1 {
                    count += 1
                }

                val = val >> 1
            }

            res[num] = count
        }

        return res
    }
}