class Solution {
    func isPrefixString(_ s: String, _ words: [String]) -> Bool {
        var res = ""

        for word in words {
            res += word

            if res == s {
                return true
            }

            if res.count > s.count {
                return false
            }
        }

        return false
    }
}