**Problem: Find the Perfect Font Size for a Given Width**

Given a single-line text string and a maximum width (in points), determine the largest font size (integer) that allows the text to fit within the specified width. Assume that the text uses the system font and that the width is measured in points.

You are required to implement a function `findPerfectFontSize(_ text: String, _ maxWidth: CGFloat) -> Int` that utilizes binary search to efficiently determine the optimal font size.

You can use the following helper function to measure the width of a text string for a given font size:

import UIKit

func textWidth(for text: String, withFontSize fontSize: CGFloat) -> CGFloat {
    let font = UIFont.systemFont(ofSize: fontSize)
    let attributes = [NSAttributedString.Key.font: font]
    let size = (text as NSString).size(withAttributes: attributes)
    return size.width
}

**Example 1:**
let text = "Hello, World!"
let maxWidth: CGFloat = 100.0
let result = findPerfectFontSize(text, maxWidth)
print(result) // Expected output: the largest font size that fits within 100 points width

**Example 2:**
let text = "Lorem ipsum dolor sit amet."
let maxWidth: CGFloat = 200.0
let result = findPerfectFontSize(text, maxWidth)
print(result) // Expected output: the largest font size that fits within 200 points width

**Constraints:**
- The length of the text string is between 1 and 1000 characters.
- The maximum width is between 10.0 and 1000.0 points.
- The font size should be an integer between 1 and 100.

**Notes:**
- Use binary search to efficiently find the largest font size.
- Make sure to handle edge cases where the text may be too long to fit even at the smallest font size or too short to require a reduction in font size.

func findPerfectFontSize(_ text: String, _ maxWidth: CGFloat) -> Int {
    // Your code here
}