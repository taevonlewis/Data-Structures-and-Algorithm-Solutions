class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var low: Int = 0
        var high: Int = nums.count - 1

        while low < high {
            let mid = (low + high) / 2

            if nums[mid] > nums[high] {
                low = mid + 1
            } else if nums[mid] < nums[high] {
                high = mid
            } else {
                high -= 1
            }
        }

        return nums[low]
    }
}