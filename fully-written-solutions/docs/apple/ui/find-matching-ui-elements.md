# Find Matching UI Elements

## Problem Description

You are working on an iOS application that involves displaying a list of UI elements with various attributes. Each UI element is represented by a struct `UIElement` which has a property `attribute` of type `String`. You are given an array of `UIElement` objects and a target attribute string. Your task is to find all pairs of UI elements that have matching attributes.

Write a function `findMatchingUIElements` that takes an array of `UIElement` objects and a target attribute string, and returns an array of tuples, where each tuple contains the indices of the UI elements that have the matching attribute.

## Example

```swift
struct UIElement {
    var attribute: String
}

func findMatchingUIElements(_ elements: [UIElement], _ targetAttribute: String) -> [(Int, Int)] {
    // Your implementation here
}

// Example usage:
let elements = [
    UIElement(attribute: "button"),
    UIElement(attribute: "label"),
    UIElement(attribute: "button"),
    UIElement(attribute: "textfield"),
    UIElement(attribute: "label")
]
let targetAttribute = "label"
let result = findMatchingUIElements(elements, targetAttribute)
// Expected output: [(1, 4)]
```

## Constraints

- The array of `UIElement` objects will contain between 0 and 1000 elements.
- Each `UIElement`'s `attribute` will be a non-empty string of length between 1 and 100.
- The target attribute string will be a non-empty string of length between 1 and 100.
- The order of indices in the tuple should be in ascending order, i.e., for any tuple `(i, j)` in the output, `i < j`.

## Function Signature

```swift
func findMatchingUIElements(_ elements: [UIElement], _ targetAttribute: String) -> [(Int, Int)]
```