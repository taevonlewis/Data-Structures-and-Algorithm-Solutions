
import Foundation
// import UIKit

// func textWidth(for text: String, withFontSize fontSize: CGFloat) -> CGFloat {
//     let font = UIFont.systemFont(ofSize: fontSize)
//     let attributes = [NSAttributedString.Key.font: font]
//     let size = (text as NSString).size(withAttributes: attributes)
//     return size.width
// }

// func findPerfectFontSize(_ text: String, _ maxWidth: CGFloat) -> Int {
//     var low: Int = 1
//     var high: Int = 100

//     while low <= high {
//         let mid = (low + high) / 2
//         let currWidth = textWidth(for: text, withFontSize: CGFloat(mid))
        
//         if currWidth == maxWidth {
//             return mid
//         } else if currWidth < maxWidth {
//             low = mid + 1
//         } else {
//             high = mid - 1
//         }
        
//     }

//     return high
// }

// public func printTextWidth() {
//     let text = "Hello, World!"
//     let maxWidth: CGFloat = 100.0
//     let result = findPerfectFontSize(text, maxWidth)
//     print(result)
// }

// printTextWidth()
