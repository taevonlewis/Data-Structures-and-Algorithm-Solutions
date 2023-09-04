class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard s.count > 0 else { return 0 }

        let arr = Array(s)
        var hs = Set<Character>()
        var l = 0
        var r = 0
        var window = 0

        for r in 0..<s.count {
            while hs.contains(arr[r]) {
                hs.remove(arr[l])
                l += 1
            }

            hs.insert(arr[r])
            window = max(window, r - l + 1)
        }
        return window
    }
}
