class Solution {
public:
    int findMaxConsecutiveOnes(vector<int>& nums) {
        /* 
        input: dynamic array of integers
        output: max # of consecutive 1s
            example: [0,1,1,0,0,1,1,1] // last 3 are the most in a row
                     [1,0] // only one 1 so that is the max amount
        processes: 
            1. create temporary count to track 1 occurrences
            2. create max count to hold max # of consecutive 1s
                initialize at 0
            3. loop through integer array
            4. if value is a 1, increase temp count
            5. if temp count > max count
                set max as temp
            6. if value is a 0, set temp to 0
            7. return max
        */
            
        int tempCount {0};
        int maxCount {0};
        
        for (int i {0}; i < nums.size(); ++i)
        {  
            if (nums[i] == 1)
            {
                ++tempCount;
            }
            else
            {
                tempCount = 0;
            }
            
            if (tempCount > maxCount)
                maxCount = tempCount;
        }
        
        return maxCount;
    }
};