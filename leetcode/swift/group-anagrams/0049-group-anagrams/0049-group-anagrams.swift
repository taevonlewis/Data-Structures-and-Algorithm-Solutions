class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var res: [[Int]: [String]] = [:]
        let a = "a" as Character
        
        for str in strs {
            var key = [Int](repeating: 0, count: 26)

            for char in Array(str) {
                key[Int(char.asciiValue! - a.asciiValue!)] += 1
            }

            res[key, default: []].append(str)
        }

        return Array(res.values)
    }
}