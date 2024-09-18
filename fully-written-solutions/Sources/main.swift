import apple

func naviColorDynamic() -> String? {
    let buttons: [(title: String, fontSize: Float)] = [("Home", 17.0), ("Settings", 15.0), ("Profile", 13.0)]
    let targetFontSize: Float = 16.0

    return adjustFontSize(buttons, targetFontSize)
}

if let button = naviColorDynamic() {
    print(button)
} else {
    print("No button within size found")
}