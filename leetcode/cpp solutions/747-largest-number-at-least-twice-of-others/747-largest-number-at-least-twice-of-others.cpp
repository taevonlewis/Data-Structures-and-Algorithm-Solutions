class Solution {
public:
    int dominantIndex(vector<int>& nums) {
        /*
            input: integer array
            output: index of largest number IF each element * 2 is larger or == to largest num
            processes:
                search for largest num
                    store largest num
                    store largest num's index
                add each element to hashmap
                    key = num
                    value = num * 2
                    skip num if it is the largest num
                check if all hashmap values are > largest num
                    return largest num's index
        */
        
        map<int, int> mp;
        int largestNum {nums[0]};
        int largestNumIdx {0};
        
        for (int i {0}; i < nums.size(); ++i)
        {
            if (nums[i] > largestNum)
            {
                largestNum = nums[i];
                largestNumIdx = i;
                // std::cout << "LARGEST NUM -> INDEX: " << largestNum << ", " << largestNumIdx << '\n';
            }
            
            mp[nums[i]] = nums[i] * 2;
        }
        
        for (auto i : mp)
        {
            // std::cout << "MAP KEY -> VALUE: " << i.first << ", " << i.second << '\n';
            if (largestNum < i.second && i.first != largestNum)
            {
                // std::cout << i.second << ", " << i.first << '\n';
                return -1;
            }
        }
        
        return largestNumIdx;
    }
};