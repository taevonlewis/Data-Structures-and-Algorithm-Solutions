class Solution {
public:
    bool isValidSudoku(vector<vector<char>>& board) {
        const int cnt = 9;
        bool row[cnt][cnt] = {false};
        bool col[cnt][cnt] = {false};
        bool subBox[cnt][cnt] = {false};
        
        for(int r = 0; r < cnt; ++r){
            for(int c = 0; c < cnt; ++c){
                if(board[r][c] == '.')
                    continue; // if not number pass
                
                int num = board[r][c] - '0' - 1; //char to num idx
                int innerBox = (r/3) * 3 + (c/3);
                
                //if number already exists
                if(row[r][num] || col[c][num] || subBox[innerBox][num]){
                    return false;
                }
                
                row[r][num] = true;
                col[c][num] = true;
                subBox[innerBox][num] = true;
            }
        }
        return true;
    }
};