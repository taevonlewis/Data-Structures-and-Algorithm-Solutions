class Solution {
public:
    bool exist(vector<vector<char>>& board, string word) {
        int row = board.size();
        int col = board[0].size();

        for (int i {0}; i < row; ++i)
        {
            for (int j {0}; j < col; ++j)
            {
                if (board[i][j] == word[0])
                {
                    if (search(board, word, i, j, row, col, 0))
                    {
                    return true;
                    }
                }
            }
        }

        return false;
    }

private:
    bool search(vector<vector<char>>& board, string word, int i, int j, int row, int col, int index) {
        if (i < 0 || i >= row || j < 0 || j >= col || board[i][j] != word[index])
        {
            return false;
        }

        if (index == word.size() - 1) return true;

        board[i][j] = '#';
        if (search(board, word, i - 1, j, row, col, index + 1)
        || search(board, word, i + 1, j, row, col, index + 1)
        || search(board, word, i, j - 1, row, col, index + 1)
        || search(board, word, i, j + 1, row, col, index + 1))
        {
            return true;
        }

        board[i][j] = word[index];
        return false;
    }
};