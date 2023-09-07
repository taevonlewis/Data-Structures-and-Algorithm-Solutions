class Solution {
    func interpret(_ command: String) -> String {
        var res = String()

        for (idx, char) in command.enumerated() {
            if char == "G" {
                res += "G"
            } else if char == "(" {
                let nextIdx = command.index(command.startIndex, offsetBy: idx + 1)
                if command[nextIdx] == ")" {
                    res += "o"
                } else if command[nextIdx] == "a" {
                    res += "al"
                }
            }
        }
        return res
    }
}