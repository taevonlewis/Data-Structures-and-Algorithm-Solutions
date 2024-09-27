import Foundation

struct ProductItem {
    let id: Int
    let name: String
    let size: CGSize
}

func generateOptimizedGridLayout(_ items: [ProductItem], _ screenSize: CGSize) -> [[ProductItem]] {
    /*
        State: dp[row][col]
        Transition: Place item in grid -> compute how it fits in curr row/col
                    Calculate empty space and compare it for different arrangements
        Base case: Screen size < item size == invalid
                        return a large value for that config
        Memoization: Store results in dp[row][col] 
    */

    let n = items.count
    let maxWidth = Int(screenSize.width)
    
    // Initialize the DP table with large values
    var dp = Array(repeating: Array(repeating: Int.max, count: maxWidth + 1), count: n + 1)
    var track = Array(repeating: Array(repeating: -1, count: maxWidth + 1), count: n + 1)
    
    // Base case: If no items, the height is 0
    for w in 0...maxWidth {
        dp[0][w] = 0
    }
    
    // Fill the DP table
    for i in 1...n {
        let item = items[i - 1]
        let itemWidth = Int(item.size.width)
        let itemHeight = Int(item.size.height)
        
        for w in 0...maxWidth {
            // Option 1: Place item in the current row (if it fits)
            if w >= itemWidth && dp[i-1][w - itemWidth] != Int.max {
                let newHeight = dp[i-1][w - itemWidth] + itemHeight
                if newHeight < dp[i][w] {
                    dp[i][w] = newHeight
                    track[i][w] = w - itemWidth // Track where the item was placed
                }
            }
            
            // Option 2: Start a new row
            if dp[i-1][maxWidth] != Int.max {
                let newHeight = dp[i-1][maxWidth] + itemHeight
                if newHeight < dp[i][w] {
                    dp[i][w] = newHeight
                    track[i][w] = maxWidth // Track starting a new row
                }
            }
        }
    }
    
    // Backtrack to find the solution
    var layout: [[ProductItem]] = []
    var currentRow: [ProductItem] = []
    var width = maxWidth
    var i = n
    
    while i > 0 {
        let item = items[i - 1]
        let prevWidth = track[i][width]
        
        if prevWidth != maxWidth { // It was placed in the current row
            currentRow.append(item)
            width = prevWidth
        } else { // It started a new row
            if !currentRow.isEmpty {
                layout.append(currentRow.reversed()) // Add the row to the layout
                currentRow = []
            }
            currentRow.append(item)
            width = maxWidth
        }
        
        i -= 1
    }
    
    // Add the last row
    if !currentRow.isEmpty {
        layout.append(currentRow.reversed())
    }
    
    return layout.reversed() // Return the layout in the correct order
}

public func printGeneratedOptimizedGridLayout() {
    let items = [
    ProductItem(id: 1, name: "Item 1", size: CGSize(width: 50, height: 50)),
    ProductItem(id: 2, name: "Item 2", size: CGSize(width: 50, height: 50)),
    ProductItem(id: 3, name: "Item 3", size: CGSize(width: 50, height: 50)),
    ProductItem(id: 4, name: "Item 4", size: CGSize(width: 50, height: 50))
]

    let screenSize = CGSize(width: 200, height: 400)

    let optimizedGrid = generateOptimizedGridLayout(items, screenSize)

// Expected output could be a 2x2 grid layout, for example:
// [
//     [ProductItem(id: 1, name: "Item 1", size: CGSize(width: 50, height: 50)), ProductItem(id: 2, name: "Item 2", size: CGSize(width: 50, height: 50))],
//     [ProductItem(id: 3, name: "Item 3", size: CGSize(width: 50, height: 50)), ProductItem(id: 4, name: "Item 4", size: CGSize(width: 50, height: 50))]
// ]

    print(optimizedGrid)
}
