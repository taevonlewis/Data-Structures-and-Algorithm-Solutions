import Foundation

func findButtonPosition(_ buttons: [String], _ target: String) -> Int {
    guard !buttons.isEmpty else {
        return -1
    }

    var buttonIndices: [String: Int] = [:]

    for (idx, button) in buttons.enumerated() {
        buttonIndices[button.lowercased()] = idx
    }

    if let result = buttonIndices[target.lowercased()] {
        return result
    }

    return -1
}

public func printButtonPosition() {
    let buttons1 = ["Home", "Profile", "Settings", "Logout"], target1 = "Profile"
    let buttons2 = ["Home", "Profile", "Settings", "Logout"], target2 = "Login"
    let buttons3: [String] = [], target3 = "Home"

    print(findButtonPosition(buttons1, target1))
    print(findButtonPosition(buttons2, target2))
    print(findButtonPosition(buttons3, target3))
}