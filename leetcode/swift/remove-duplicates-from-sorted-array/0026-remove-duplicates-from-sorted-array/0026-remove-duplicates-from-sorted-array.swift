class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var count: Int = 0

        for i in 1..<nums.count {
            if nums[i] != nums[count] {
                count += 1
                nums[count] = nums[i]
            }
        }

        return count + 1
    }
}