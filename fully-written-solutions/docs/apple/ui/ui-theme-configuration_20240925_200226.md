# Problem: UI Theme Configuration

Given an array of strings `themes` representing different UI themes available in an iOS application, and a string `userPreference` representing the user's preferred theme, implement a function `findThemeIndex` that returns the index of the user's preferred theme in the `themes` array. If the preferred theme is not found, return `-1`.

Each theme in the `themes` array is unique and represents a different UI configuration. The function should be efficient enough to handle large arrays of themes.

## Example 1:
```swift
Input:
themes = ["Light", "Dark", "Blue", "Green"]
userPreference = "Blue"
Output:
2
```

## Example 2:
```swift
Input:
themes = ["Light", "Dark", "Blue", "Green"]
userPreference = "Red"
Output:
-1
```

## Constraints:
1. `1 <= themes.count <= 10^4`
2. `1 <= themes[i].count, userPreference.count <= 100`
3. `themes[i]` and `userPreference` consist of only lowercase and uppercase English letters.

## Function Signature:
```swift
func findThemeIndex(_ themes: [String], _ userPreference: String) -> Int
```

Implement the `findThemeIndex` function to solve the problem.