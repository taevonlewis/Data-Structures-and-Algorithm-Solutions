class Solution {
    func maxLengthBetweenEqualCharacters(_ s: String) -> Int {
        var maxLen: Int = -1
        var dict: [Character : Int] = [:]
        
        for (i, char) in s.enumerated() {
            if let first = dict[char] {
                maxLen = max(maxLen, i - first - 1)
            } else {
                dict[char] = i
            }
        }

        return maxLen
    }
}