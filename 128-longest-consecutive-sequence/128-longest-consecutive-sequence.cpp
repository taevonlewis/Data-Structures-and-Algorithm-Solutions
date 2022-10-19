class Solution {
public:
    int longestConsecutive(vector<int>& nums) {
        /*
            create int unordered_set that holds ints in nums vector from beginning to end
            create int longest to hold the longest sequence of consecutive numbers
            loop through nums
              if the number - 1 is not in the set
                create an int length variable starting at 1
                    // if number - 1 isnt in the set, the sequence length starts at our current number so length is 1
                while loop, condition: the number + length is inside the set
                    // number + length would be number + 1 + 1 + 1... essentially so the very next consecutive number after adding 1
                    increase length + 1
                set longest as the max between longest and length to find if the sequence increased
            return longest
        */
        
        unordered_set<int> numsSet(nums.begin(), nums.end());
        int longest {0};
        
        for (int i {0}; i < nums.size(); ++i)
        {
            if (numsSet.find(nums[i] - 1) == numsSet.end()) // 1, 0, 1, 1
            {
                int length {1};
                
                while (numsSet.find(nums[i] + length) != numsSet.end())
                {
                    ++length; // 2, 3, 4
                }
                
                longest = max(longest, length); // 1, 1, 1, 4, 4, 4
            }
        }
        
        return longest; // 4
    }
};