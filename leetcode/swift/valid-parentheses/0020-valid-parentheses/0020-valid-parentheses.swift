class Solution {
    func isValid(_ str: String) -> Bool {
        let parenMap: [Character: Character] = ["(": ")", "[": "]", "{": "}"]
        var stack: [Character] = []

        for char in str {
            if parenMap.keys.contains(char) {
                stack.append(char)
            } else if stack.isEmpty || char != parenMap[stack.removeLast()] {
                return false
            } 
        }

        return stack.isEmpty
    }
}