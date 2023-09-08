class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var arr = strs.map { Array($0) }
        var firstStr = arr[0]

        for i in 0..<firstStr.count {
            let char = firstStr[i]

            for j in 1..<arr.count {
                if i == arr[j].count || arr[j][i] != char {
                    return String(firstStr[0..<i])
                }
            }
        }

        return String(firstStr)
    }
}