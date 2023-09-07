class Solution {
    func lengthOfLongestSubstring(_ str: String) -> Int {
        guard str.count > 0 else {
            return 0
        }

        let s = Array(str)
        var window: Set<Character> = []
        var left: Int = 0
        var length: Int = 0

        for right in 0..<s.count {
            while window.contains(s[right]) {
                window.remove(s[left])
                left += 1
            }

            window.insert(s[right])
            length = max(length, right - left + 1)
        }

        return length
    }
}