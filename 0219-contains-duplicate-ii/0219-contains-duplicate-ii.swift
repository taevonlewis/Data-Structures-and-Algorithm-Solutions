class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var window: Set<Int> = []
        var l: Int = 0

        for r in 0..<nums.count {
            if r - l > k {
                window.remove(nums[l])
                l += 1
            }

            if window.contains(nums[r]) {
                return true
            }

            window.insert(nums[r]) 
        }

        return false
    }
}