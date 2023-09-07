class Solution {
    func largestGoodInteger(_ num: String) -> String {
        var maxNum: Int = -1


        for i in 0..<num.count - 2 {
            let idx = num.index(num.startIndex, offsetBy: i)
            let idxPlusOne = num.index(after: idx)
            let idxPlusTwo = num.index(after: idxPlusOne)
            if num[idx] == num[idxPlusOne] && num[idx] == num[idxPlusTwo] {
                maxNum = max(maxNum, Int(String(num[idx]))!)
            }
        }

        if maxNum == -1 {
            return ""
        }

        return "\(maxNum)\(maxNum)\(maxNum)"
    }
}