# Find the First Overlapping View

## Problem Description

You are given a list of views on an iOS screen, each represented by their x and y coordinates and dimensions (width, height). The views are guaranteed to be rectangular and aligned with the screen edges. Your task is to identify the first pair of views that overlap with each other.

Write a function `findFirstOverlappingView` that takes an array of views, where each view is represented as a tuple `(x: Int, y: Int, width: Int, height: Int)`, and returns the indices of the first two overlapping views. If no views overlap, return `(-1, -1)`.

## Example

### Example 1:

```swift
Input: views = [(0, 0, 10, 10), (5, 5, 10, 10), (20, 20, 5, 5)]
Output: (0, 1)

Explanation: The first and second views overlap.
```

### Example 2:

```swift
Input: views = [(0, 0, 10, 10), (20, 20, 10, 10)]
Output: (-1, -1)

Explanation: No views overlap.
```

### Constraints:

- The number of views `n` is within the range `[1, 10^4]`.
- Each coordinate and dimension is within the range `[0, 10^4]`.

## Function Signature:

```swift
func findFirstOverlappingView(_ views: [(x: Int, y: Int, width: Int, height: Int)]) -> (Int, Int)
```