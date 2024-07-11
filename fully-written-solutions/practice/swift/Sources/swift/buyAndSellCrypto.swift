func maxProfit(_ prices: [Int]) -> Int {
    var maxAmount: Int = 0
    var left: Int = 0
    var right: Int = 0

    for right in 1..<prices.count {
        if prices[right] < prices[left] {
            left = right
        }

        maxAmount = max(maxAmount, prices[right] - prices[left])
    }

    return maxAmount
}

// print(maxProfit([10,1,5,6,7,1]))
// print(maxProfit([10,8,7,5,2]))