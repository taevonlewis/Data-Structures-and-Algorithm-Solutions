class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var map: [Int: Int] = [:]

        for num in nums {
            if let val = map[num] {
                return true
            } else {
                map[num] = 1
            }
        }

        return false
    }
}