class Solution {
public:
    int maxProfit(vector<int>& prices) {
        int result {0};
        int tempMin = prices[0];
        
        for (int i {1}; i < prices.size(); ++i)
        {
            tempMin = min(tempMin, prices[i]);
            result = max(result, prices[i] - tempMin);
        }
        
        return result;
    }
};