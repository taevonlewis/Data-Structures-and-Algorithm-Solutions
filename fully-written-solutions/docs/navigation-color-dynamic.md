# Problem: Navigation Color Dynamic Problem (Easy)

Type: Single-part leetcode

**Problem Type**: Easy

**Complexity**: Easy

**Generated Problem**:

## Problem Statement

You are given an array of UI button titles and their corresponding font sizes. Your task is to create a function `adjustFontSize` that takes a list of button titles and a target font size, then returns the first button title that is closest to the given font size based on Apple's Dynamic Type settings.

In a real-world scenario, users can choose their preferred font size settings in the iOS settings, and you need to ensure that your application respects these settings for better accessibility. For this problem, assume the following predefined array of standard font sizes in ascending order, as used by Apple's Dynamic Type:

```swift
let dynamicTypeFontSizes: [Float] = [11.0, 13.0, 15.0, 17.0, 20.0, 24.0, 28.0, 34.0, 40.0, 46.0, 52.0]
```

### Function Signature
```swift
func adjustFontSize(buttons: [(title: String, fontSize: Float)], targetFontSize: Float) -> String?
```

### Input
- `buttons`: An array of tuples where each tuple consists of a button title (String) and its font size (Float).
- `targetFontSize`: A target font size (Float) specified by the user.

### Output
- Returns the button title (String) whose font size is the closest to the target font size.
- If there are multiple buttons with the same closest font size, return the title of the first one encountered in input array.
- If no button titles are provided, return `nil`.

### Example
```swift
let buttons = [("Home", 17.0), ("Settings", 15.0), ("Profile", 13.0)]
let targetFontSize: Float = 16.0

let result = adjustFontSize(buttons: buttons, targetFontSize: targetFontSize)
// result should be "Settings" because 15.0 is closer to 16.0 than 17.0 or 13.0
```

### Constraints
- The array of buttons is not guaranteed to be sorted.
- Assume at least one button title is provided.
- If the target font size exactly matches a font size in the given dynamic type scale, return the button title with that exact font size.
- The font size in the `dynamicTypeFontSizes` is unique and sorted in ascending order.

### Hint
Consider the predefined array of font sizes in `dynamicTypeFontSizes` to find the closest available font size quickly to achieve optimal performance.

