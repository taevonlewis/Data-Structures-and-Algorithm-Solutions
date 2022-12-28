class Solution {
public:
    int climbStairs(int n) {
        vector<int> dp(n+1);
        
        return climbStairsdp(n, dp);
    }
    
private:
    int climbStairsdp(int n, vector<int>& dp) {
        if (n<2) return 1;
        
        if (dp[n]) 
        {
            return dp[n];
        }
        else 
        {
            return dp[n] = climbStairsdp(n-1, dp) + climbStairsdp(n-2, dp);
        }
    }
};