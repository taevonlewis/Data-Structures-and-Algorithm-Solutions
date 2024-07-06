func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var prevMap: [Int: Int] = [:]

    for (idx, num) in nums.enumerated() {
        let diff = target - num

        if let firstIdx = prevMap[diff] {
            return [firstIdx, idx]
        }

        prevMap[num] = idx
    }

    return []
}

print(twoSum([3,4,5,6], 7))
print(twoSum([4,5,6], 10))
print(twoSum([5,5], 10))