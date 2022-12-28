class Solution {
public:
    int rob(vector<int>& nums) {
       // base case
        int n = nums.size();
        
        if (n < 2)
        {
            return nums[0];    
        }
        
        return (max(robbing(nums, 0, n - 2), robbing(nums, 1, n - 1)));
    }

private:
    int robbing(vector<int>& nums, int start, int end) {
       int prev = 0;
        int curr = 0;
        int next = 0;
        
        for (int i = start; i <= end; i++) {
            next = max(prev + nums[i], curr);
            prev = curr;
            curr = next;
        }
        
        return curr; 
    }
};