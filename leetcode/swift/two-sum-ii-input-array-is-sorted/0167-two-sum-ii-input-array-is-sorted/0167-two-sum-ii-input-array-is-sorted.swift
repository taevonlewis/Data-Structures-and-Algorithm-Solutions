class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var l: Int = 0
        var r: Int = numbers.count - 1

        while l < r {
            let sum = numbers[l] + numbers[r]
            if sum > target {
                r -= 1
            } else if sum < target {
                l += 1
            } else {
                return [l + 1, r + 1]
            }
        }

        return [-1, -1]
    }
}