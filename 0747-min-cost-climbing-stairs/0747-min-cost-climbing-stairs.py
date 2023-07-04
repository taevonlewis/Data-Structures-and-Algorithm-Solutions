"""
Problem Summary: Find the least cost to reach the last index
Pattern/Approach: Dynamic Programming
Input: [1,100,1,1,1,100,1,1,100,1]
Output: 6
Assumptions/Constraints: cost array length always 2+, ints in array vary from 0-999 
Processes/Steps:
    if length of input array is 2, return the minimum between cost[0] and cost[1]
    create a dynamic programming array 'dp' of zeros with the same length as the input array
    set dp[0] and dp[1] to be equal to cost[0] and cost[1] respectively
    iterate over the rest of the cost array from index 2 to the end
        for each index i, set dp[i] to be cost[i] + the minimum between dp[i - 1] and dp[i - 2]
    return the minimum between dp[-1] and dp[-2], which are the minimum costs to reach the last step from the two possible previous steps
Edge Cases: if input is valid
"""

class Solution:
    def minCostClimbingStairs(self, cost: List[int]) -> int:
        if len(cost) == 2:
            return min(cost[0], cost[1])
        
        dp = [0] * len(cost)
        dp[0] = cost[0]
        dp[1] = cost[1]
        
        for i in range(2, len(cost)):
            dp[i] = cost[i] + min(dp[i - 1], dp[i - 2])
            
        return min(dp[-1], dp[-2])