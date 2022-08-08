class Solution {
public:
    void duplicateZeros(vector<int>& arr) {
        int dupes {0};
        int length = arr.size() - 1;
        
        for (int i {0}; i <= length - dupes; ++i)
        {
           if (arr[i] == 0)
           {
               if (i == length - dupes)
               {
                   arr[length] = 0;
                   --length;
                   break;
               }
               ++dupes;
           }
        }
        
        int last = length - dupes;

        for (int i = last; i >= 0; i--) {
            if (arr[i] == 0) {
                arr[i + dupes] = 0;
                dupes--;
                arr[i + dupes] = 0;
            } else {
                arr[i + dupes] = arr[i];
            }
        }
    }
};