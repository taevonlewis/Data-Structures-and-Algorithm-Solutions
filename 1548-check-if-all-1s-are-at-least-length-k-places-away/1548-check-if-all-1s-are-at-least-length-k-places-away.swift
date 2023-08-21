class Solution {
    func kLengthApart(_ nums: [Int], _ k: Int) -> Bool {
        var lastOne = -k - 1
        print(lastOne)
        for (i, num) in nums.enumerated() {
            if num == 1 {
                if i - lastOne - 1 < k {
                    return false
                }

                lastOne = i
            }
        }

        return true
    }
}