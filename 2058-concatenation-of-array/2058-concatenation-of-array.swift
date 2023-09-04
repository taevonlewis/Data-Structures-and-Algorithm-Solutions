class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var arr = nums

        for i in nums {
            arr.append(i)
        }

        return arr
    }
}