class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard s.count > 0 else { return 0 } 

        var arr = Array(s)
        var window: Set<Character> = []
        var left: Int = 0 
        var length: Int = 0

        for right in 0..<s.count {
            while window.contains(arr[right]) {
                window.remove(arr[left])
                left += 1
            }

            window.insert(arr[right])
            length = max(length, right - left + 1)
        }

        return length
    }
}