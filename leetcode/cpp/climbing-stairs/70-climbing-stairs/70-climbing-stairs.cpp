class Solution {
public:
    int climbStairs(int n) {
        vector<int> dp(n + 1);
        return minStairs(n, dp);
    }
    
private:
    int minStairs(int n, vector<int>& dp) {
        if (n < 2) return 1;
        
        if (dp[n])
        {
            return dp[n];
        }
        else
        {
            return dp[n] = minStairs(n - 1, dp) + minStairs(n - 2, dp); 
        }
    }
};