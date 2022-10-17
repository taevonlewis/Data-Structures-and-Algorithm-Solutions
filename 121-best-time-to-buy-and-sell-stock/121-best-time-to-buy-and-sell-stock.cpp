class Solution {
public:
    int maxProfit(vector<int>& prices) {
        int result {0};
        // int tempMax {0};
        int tempMin = prices[0];
        
        for (int i {1}; i < prices.size(); ++i)
        {
            tempMin = min(tempMin, prices[i]); // 1, 1, 1, 1, 1
            // tempMax = max(tempMax, prices[i]); // 1, 5, 5, 6, 6
            
            // int tempResult = tempMax - tempMin; // 0, 4, 4, 5, 5
            // result = max(tempResult, result);
            result = max(result, prices[i] - tempMin);
        }
        
        // if (tempMin == prices[prices.size() - 1]) return 0;
        return result;
    }
};