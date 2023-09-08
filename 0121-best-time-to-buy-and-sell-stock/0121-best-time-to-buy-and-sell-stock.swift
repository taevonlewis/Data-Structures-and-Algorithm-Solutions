class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var i = 0
        var j = 1
        var maxProfit = 0

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