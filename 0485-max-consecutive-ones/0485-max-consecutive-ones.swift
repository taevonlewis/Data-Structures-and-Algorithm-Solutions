class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var cnt = Int()
        var res = Int()

        for num in nums {
            if num == 1 {
                cnt += 1
                res = max(res, cnt)
            } else {
                cnt = 0
            }
        }

        return res
    }
}