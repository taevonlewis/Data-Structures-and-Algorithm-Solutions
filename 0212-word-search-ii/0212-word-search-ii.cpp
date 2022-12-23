class Solution {
    struct TrieNode {
        TrieNode* children[26];
        bool isWord;

        TrieNode() {
            for (int i {0}; i < 26; ++i)
            {
                children[i] = NULL;
            }

            isWord = false;
        }
    };
public:
    vector<string> findWords(vector<vector<char>>& board, vector<string>& words) {
        for (int i {0}; i < words.size(); ++i)
        {
            insert(words[i]);
        }

        int row = board.size();
        int column = board[0].size();

        TrieNode* node = root;
        vector<string> result;

        for (int i {0}; i < row; ++i)
        {
            for (int j {0}; j < column; ++j)
            {
                wordSearch(board, i, j, row, column, node, "", result);
            }
        }

        return result;
    }

private:
    TrieNode* root = new TrieNode();

    void insert(string word) {
        TrieNode* node = root;
        int curr {0};

        for (int i {0}; i < word.length(); ++i)
        {
            curr = word[i] - 'a';
            if (node -> children[curr] == NULL)
            {
                node -> children[curr] = new TrieNode();
            }

            node = node -> children[curr];
        }

        node -> isWord = true;
    }

    void wordSearch(vector<vector<char>>& board, int i, int j, int row, int column, TrieNode* node, string word, vector<string>& result) {
        if (i < 0 || i >= row || j < 0 || j >= column || board[i][j] == '#')
        {
            return;
        }

        char currentChar { board[i][j] };

        node = node -> children[currentChar - 'a'];
        if (node == NULL)
        {
            return;
        }

        word += board[i][j];
        if (node -> isWord)
        {
            result.push_back(word);
            node -> isWord = false;
        }

        board[i][j] = '#';

        wordSearch(board, i - 1, j, row, column, node, word, result);
        wordSearch(board, i + 1, j, row, column, node, word, result);
        wordSearch(board, i, j - 1, row, column, node, word, result);
        wordSearch(board, i, j + 1, row, column, node, word, result);

        board[i][j] = currentChar;
    }
};