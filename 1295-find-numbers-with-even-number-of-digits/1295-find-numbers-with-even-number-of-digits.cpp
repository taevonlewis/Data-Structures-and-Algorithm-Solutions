class Solution {
public:
    int findNumbers(vector<int>& nums) {
        /*
            input: vector array of integers
            output: count of even digit integers
                example: [12,345,9,1,4920] -> 2
                    12 and 4920 are the only 2 digit integers
            processes:
                create count to hold amount of even numbers
                if integer is even, increase count
                return count
        */
        
        int count {0};
        
        for (int i {0}; i < nums.size(); ++i)
        {
            std::string str {to_string(nums[i])};
            
            if (str.length() % 2 == 0)
                ++count;
        }
        
        return count;
    }
};