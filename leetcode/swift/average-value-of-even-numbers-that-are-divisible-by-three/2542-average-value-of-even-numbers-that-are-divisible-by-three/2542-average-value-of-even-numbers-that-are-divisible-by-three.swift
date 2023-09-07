class Solution {
    func averageValue(_ nums: [Int]) -> Int {
        var cnt = Int()
        var arr = [Int]()

        for num in nums {
            if num % 2 == 0 {
                if num % 3 == 0 {
                    arr.append(num)
                }
            } 
        }

        for i in arr {
            cnt += i
        }

        return !arr.isEmpty ? cnt / arr.count : 0
    }
}