class Solution {
public:
    vector<int> twoSum(vector<int>& numbers, int target) {
        vector<int> answer;
        
        int i {0};
        int j = numbers.size() - 1;
        
        while (i < j)
        {
            int sum = numbers[i] + numbers[j];
            
            if (sum < target)
            {
                ++i;
            }
            else if (sum > target)
            {
                --j;
            }
            else
            {
                answer.push_back(i + 1);
                answer.push_back(j + 1);
                break;
            }
            
        }
        
        return answer;
    }
};