class Solution {
    func stringMatching(_ words: [String]) -> [String] {
        var res = Set<String>()

        for outer in words {
            for inner in words {
                if outer != inner && inner.contains(outer) {
                    res.insert(outer)
                }
            }
        }

        return Array(res)
    }
}