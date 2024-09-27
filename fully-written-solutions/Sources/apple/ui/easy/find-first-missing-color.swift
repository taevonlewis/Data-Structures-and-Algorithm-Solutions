import Foundation

func findFirstMissingColor(_ userSelectedColors: [String]) -> String {
    let predefinedColors = ["Red", "Green", "Blue", "Yellow", "Black", "White", "Purple", "Orange", "Gray", "Brown"]

    var st = Set<String>()

    for string in userSelectedColors {
        st.insert(string.lowercased())
    }

    for color in predefinedColors {
        if !st.contains(color.lowercased()) {
            return color
        }
    }

    return "No missing color found"
}

public func printFirstMissingColor() {
    let userSelectedColors = ["Blue", "Green", "Red", "Black"]

    print(findFirstMissingColor(userSelectedColors))
}