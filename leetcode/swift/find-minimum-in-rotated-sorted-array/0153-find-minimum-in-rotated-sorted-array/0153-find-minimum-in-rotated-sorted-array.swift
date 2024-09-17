class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var start: Int = 0
        var end: Int = nums.count - 1
        var min: Int = Int.max

        while start <= end {
            let mid = (start + end) / 2

            if nums[mid] < min { 
                min = nums[mid] 
            }

            if nums[mid] > nums[end] {
                start = mid + 1
            } else {
                end = mid - 1
            }
        }

        return min
    }
}
