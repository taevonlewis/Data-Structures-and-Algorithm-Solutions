class ListNode {
    var k: Int
    var val: Int
    var prev: ListNode?
    var next: ListNode?

    init(_ key: Int, _ value: Int) {
        self.k = key
        self.val = value
        self.prev = nil
        self.next = nil
    }
}

class LRUCache {
    var cap: Int
    var cache: [Int: ListNode?] = [:]
    var left: ListNode?
    var right: ListNode?

    init(_ capacity: Int) {
        self.cap = capacity
        self.left = ListNode(0, 0)
        self.right = ListNode(0, 0)

        left?.next = right
        right?.prev = left
    }
    
    func get(_ key: Int) -> Int {
        if let node = cache[key] {
            remove(node)
            insert(node)
            return node!.val
        }

        return -1
    }
    
    func put(_ key: Int, _ value: Int) {
        if let node = cache[key] {
            remove(node)
        }

        let newNode = ListNode(key, value)
        cache[key] = newNode
        insert(newNode)
        
        if cache.count > cap {
            if let lru = left?.next {
                remove(lru)
                cache.removeValue(forKey: lru.k)
            }
        }
    }

    func remove(_ node: ListNode?) {
        let prev = node?.prev
        let next = node?.next

        prev?.next = next
        next?.prev = prev
    }

    func insert(_ node: ListNode?) {
        let prev = right?.prev
        let next = right

        prev?.next = node
        next?.prev = node

        node?.prev = prev
        node?.next = next
    }
}
/**
 * Your LRUCache object will be instantiated and called as such:
 * let obj = LRUCache(capacity)
 * let ret_1: Int = obj.get(key)
 * obj.put(key, value)
 */