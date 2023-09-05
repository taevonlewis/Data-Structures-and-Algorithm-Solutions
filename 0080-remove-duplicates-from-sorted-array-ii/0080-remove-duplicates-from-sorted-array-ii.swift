class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count < 3 { return nums.count }
        
        var i: Int = 0
        var j: Int = 1

        for k in 2..<nums.count {
            if nums[i] != nums[k] {
                if nums[j - 1] != nums[k] {
                    i += 1
                    j += 1
                    nums[j] = nums[k]
                }
            }
        }

        return j + 1
    }
}