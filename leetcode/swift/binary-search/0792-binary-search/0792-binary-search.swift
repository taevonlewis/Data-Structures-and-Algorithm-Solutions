class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var low: Int = 0
        var high: Int = nums.count - 1

        while low <= high {
            let mid = (low + high) / 2

            if nums[mid] > target {
                high = mid - 1
            } else if nums[mid] < target {
                low = mid + 1
            } else {
                return mid
            }
        }

        return -1
    }
}