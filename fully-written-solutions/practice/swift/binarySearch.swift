func search(_ nums: [Int], _ target: Int) -> Int {
    var low: Int = 0
    var high: Int = nums.count - 1

    while low <= high {
        let mid = (low + high) / 2

        guard nums[mid] != target else {
            return mid
        }

        if nums[mid] < target {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }

    return -1
}

print(search([-1,0,3,5,9,12], 9))
print(search([-1,0,3,5,9,12], 0))
print(search([-1,0,3,5,9,12], 2))