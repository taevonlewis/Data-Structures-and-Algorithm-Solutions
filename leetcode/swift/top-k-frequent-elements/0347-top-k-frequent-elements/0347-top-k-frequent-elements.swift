class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) ->  [Int] {
        if nums.count == 1 {
            return nums
        }
        
        var map: [Int: Int] = [:]
        for num in nums {
            map[num, default: 0] += 1
        }

        var buckets: [[Int]] = [[Int]](repeating: [], count: nums.count + 1)
        for (key, val) in map {
            buckets[val].append(key)
        }

        var res: [Int] = []
        for i in stride(from: buckets.count - 1, through: 0, by: -1) {
            if res.count == k {
                break
            }

            res += buckets[i]
        }

        return res
    }
}