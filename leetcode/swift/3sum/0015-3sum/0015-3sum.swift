class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let arr = nums.sorted()
        var res: [[Int]] = []

        for i in 0..<arr.count {
            if i > 0 && arr[i] == arr[i - 1] {
                continue
            }

            var j = i + 1
            var k = arr.count - 1

            while j < k {
                let sum = arr[i] + arr[j] + arr[k]

                if sum == 0 {
                    res.append([arr[i], arr[j], arr[k]])
                    
                    while j < k && arr[j] == arr[j + 1] {
                        j += 1
                    }

                    while j < k && arr[k] == arr[k - 1] {
                        k -= 1
                    }

                    j += 1
                    k -= 1
                } else if sum > 0 {
                    k -= 1
                } else {
                    j += 1
                }
            }
        }

        return res
    }
}