import Foundation

func findThemeIndex(_ themes: [String], _ userPreference: String) -> Int {
    var themeIndices: [String: Int] = [:]

    for (idx, theme) in themes.enumerated() {

        themeIndices[theme.lowercased()] = idx
    }

    if let val = themeIndices[userPreference.lowercased()] {
        return val
    }

    return -1
}

public func printThemeIndex() {
    let themes1 = ["Light", "Dark", "Blue", "Green"]
    let userPreference1: String = "Blue"

    let themes2 = ["Light", "Dark", "Blue", "Green"]
    let userPreference2 = "Red"

    print(findThemeIndex(themes1, userPreference1))
    print(findThemeIndex(themes2, userPreference2))
}