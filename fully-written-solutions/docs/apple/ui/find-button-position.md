# Problem: Find Button Position

Given an array of button titles and a target button title, find the position (index) of the target button in the array. If the target button is not found, return -1. The button titles are unique.

## Example

### Example 1:
```swift
Input: buttons = ["Home", "Profile", "Settings", "Logout"], target = "Profile"
Output: 1
```

### Example 2:
```swift
Input: buttons = ["Home", "Profile", "Settings", "Logout"], target = "Login"
Output: -1
```

### Example 3:
```swift
Input: buttons = [], target = "Home"
Output: -1
```

## Constraints:
- The length of `buttons` will be in the range [0, 1000].
- The length of `buttons[i]` will be in the range [1, 100].
- `buttons[i]` and `target` consist of only printable ASCII characters.

## Function Signature
```swift
func findButtonPosition(_ buttons: [String], _ target: String) -> Int
```