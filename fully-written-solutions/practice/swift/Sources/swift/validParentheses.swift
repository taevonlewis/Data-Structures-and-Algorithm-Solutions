func isValid(_ str: String) -> Bool {
    var st: [Character] = []

    for char in str {
        if char == "(" || char == "[" || char == "{" {
            st.append(char)
        } else {
            if st.isEmpty {
                return false
            }

            if char == ")" && st.removeLast() != "(" || char == "]" && st.removeLast() != "[" || char == "}" && st.removeLast() != "{" {
                return false
            }
        }
    }

    return st.isEmpty
}

// print(isValid("()[]{}"))
// print(isValid("([{}])"))
// print(isValid("(]"))