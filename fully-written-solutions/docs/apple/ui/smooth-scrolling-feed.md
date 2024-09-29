# Sliding Window for Dynamic Image Loading

## Problem Statement

You are working on an iOS photo gallery app that displays a large number of images in a collection view. To enhance the user experience, you need to implement a dynamic image loading feature that loads images on demand as the user scrolls through the collection view. Given an array of image URLs and the current visible window range specified by the starting and ending index, your task is to return the URLs of the images that should be loaded within the visible window.

Implement a function `dynamicImageLoading` that takes an array of image URLs, a starting index, and an ending index as input, and returns an array of image URLs that should be loaded within the specified window range.

## Examples

```swift
// Example 1
let imageUrls = ["url1", "url2", "url3", "url4", "url5", "url6"]
let startIndex = 2
let endIndex = 4
print(dynamicImageLoading(imageUrls, startIndex, endIndex))
// Output: ["url3", "url4", "url5"]

// Example 2
let imageUrls = ["url1", "url2", "url3"]
let startIndex = 0
let endIndex = 2
print(dynamicImageLoading(imageUrls, startIndex, endIndex))
// Output: ["url1", "url2", "url3"]

// Example 3
let imageUrls = ["url1", "url2", "url3", "url4"]
let startIndex = 1
let endIndex = 3
print(dynamicImageLoading(imageUrls, startIndex, endIndex))
// Output: ["url2", "url3", "url4"]
```

## Constraints

- `imageUrls` array length will be between 1 and 1000.
- `startIndex` and `endIndex` will be valid indices within the range of the `imageUrls` array.
- `startIndex` will always be less than or equal to `endIndex`.

## Function Signature

```swift
func dynamicImageLoading(_ imageUrls: [String], _ startIndex: Int, _ endIndex: Int) -> [String]
```

## Optimal Time and Space Complexity

- Time Complexity: O(n) where n is the number of elements in the `imageUrls` array.
- Space Complexity: O(m) where m is the number of image URLs within the specified window range.