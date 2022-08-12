class Solution {
public:
    vector<int> sortedSquares(vector<int>& nums) {
        /*
            input: vector of integers
            output: each integer squared then sorted in non-decreasing order
            processes:
                create a set to hold squared integers
                loop through nums vector
                square the integer, then push it into the set
                return set
        */
        
        vector<int> square;
        
        for (int i {0}; i < nums.size(); ++i)
        {
            nums[i] *= nums[i];
            square.push_back(nums[i]);
        }
        
        sort(square.begin(), square.end());
        return square;
    }
};