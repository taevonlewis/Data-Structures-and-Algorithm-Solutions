 var languages = ["Swift", "Objective-C", "Kotlin", "JavaScript", "Java"]

func removeLastValue() -> String? {
    let lastValue = languages.last
    defer {
        languages.removeLast()
    }
    return lastValue
}

// let lastValue = removeLastValue()
print("last value: \(removeLastValue() ?? "")")
print("Array: \(languages)")