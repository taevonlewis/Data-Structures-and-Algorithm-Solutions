func maxProfit(_ prices: [Int]) -> Int {
    var maxAmount: Int = 0
    var lowNum: Int = prices[0]

    for idx in 1..<prices.count {
        let num = prices[idx]

        if num < lowNum {
            lowNum = num
        } else {
            maxAmount = max(maxAmount, num - lowNum)
        }
    }

    return maxAmount
}

print(maxProfit([10,1,5,6,7,1]))
print(maxProfit([10,8,7,5,2]))