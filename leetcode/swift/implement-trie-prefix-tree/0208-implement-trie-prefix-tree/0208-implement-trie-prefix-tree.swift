class TrieNode {
    var children: [Character: TrieNode]
    var word: Bool

    init() {
        children = [:]
        word = false
    }
}

class Trie {
    var root: TrieNode

    init() {
        root = TrieNode()
    }
    
    func insert(_ word: String) {
        var curr = root
        for c in word {
            if curr.children[c] == nil {
                curr.children[c] = TrieNode()
            }

            curr = curr.children[c]!
        }

        curr.word = true
    }
    
    func search(_ word: String) -> Bool {
        var curr = root
        for c in word {
            if curr.children[c] == nil {
                return false
            }

            curr = curr.children[c]!
        }

        return curr.word
    }
    
    func startsWith(_ prefix: String) -> Bool {
        var curr = root
        for c in prefix {
            if curr.children[c] == nil {
                return false
            }

            curr = curr.children[c]!
        }

        return true
    }
}

/**
 * Your Trie object will be instantiated and called as such:
 * let obj = Trie()
 * obj.insert(word)
 * let ret_2: Bool = obj.search(word)
 * let ret_3: Bool = obj.startsWith(prefix)
 */