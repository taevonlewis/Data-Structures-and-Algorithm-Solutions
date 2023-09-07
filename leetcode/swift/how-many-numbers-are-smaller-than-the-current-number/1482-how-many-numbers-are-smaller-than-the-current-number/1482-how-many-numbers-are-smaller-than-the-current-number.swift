class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var arr = Array(repeating: 0, count: 101)

        for num in nums {
            arr[num] += 1
        }

        for i in 1..<arr.count {
            arr[i] += arr[i - 1]
        }

        var res = Array(repeating: 0, count: nums.count)

        for i in 0..<nums.count {
            if nums[i] > 0 {
                res[i] = arr[nums[i] - 1]
            }
        }

        return res
    }
}