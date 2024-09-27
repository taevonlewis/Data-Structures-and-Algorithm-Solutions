# Problem: Find First Missing Color

You are developing a feature for a painting application on iOS where users can select from a predefined list of colors. The application needs to suggest the first missing color from the list of predefined colors that is not used by the user. 

Given a list of colors the user has already selected, find the first color from the predefined list that is not in the user's selected list.

The predefined list of colors is given as:
```swift
let predefinedColors = ["Red", "Green", "Blue", "Yellow", "Black", "White", "Purple", "Orange", "Gray", "Brown"]
```

## Example

### Input
```swift
let userSelectedColors = ["Blue", "Green", "Red", "Black"]
```

### Output
```swift
"Yellow"
```

## Constraints
- The number of colors in the `userSelectedColors` list will not exceed 10.
- Each color in the `userSelectedColors` list will be a string representing a valid color from the `predefinedColors` list.
- The `userSelectedColors` list may contain duplicates.

## Function Signature
```swift
func findFirstMissingColor(userSelectedColors: [String]) -> String
```