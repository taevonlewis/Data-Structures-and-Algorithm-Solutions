class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit: Int = 0
        var i: Int = 0
        var j: Int = 1

        while j < prices.count {
            if prices[i] < prices[j] {
                let profit = prices[j] - prices[i]
                maxProfit = max(maxProfit, profit)
            } else {
                i = j
            }

            j += 1
        }

        return maxProfit
    }
}