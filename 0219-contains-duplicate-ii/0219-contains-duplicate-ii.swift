class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var window: Set<Int> = []
        var left: Int = 0

        for right in 0..<nums.count {
            if right - left > k {
                window.remove(nums[left])
                left += 1
            }

            if window.contains(nums[right]) {
                return true
            }

            window.insert(nums[right])
        }

        return false
    }
}