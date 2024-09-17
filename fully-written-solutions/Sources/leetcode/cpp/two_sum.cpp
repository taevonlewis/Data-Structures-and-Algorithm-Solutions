#include "two_sum.hpp"
#include <iostream>
#include <vector>
#include <unordered_map>

std::vector<int> twoSum(std::vector<int> nums, int target) {
    std::unordered_map<int, int> answer;
    
    for (int i {0}; i < nums.size(); ++i)
    {
        if (answer.find(target - nums[i]) != answer.end())
        {
            std::cout << answer[target - nums[i]] << "," << i << std::endl;
            return { answer[target - nums[i]], i };
        }
        
        answer[nums[i]] = i;
    }
    
    std::cout << 0 << std::endl;
    return { 0, -1 };
}
