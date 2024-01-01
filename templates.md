## Coding Templates

<details>
<summary>Click to expand!</summary>
  
### Table of Contents
1. [Solution Test Function](#solution-test-function)
2. [Stack](#stack)
3. [Queue](#queue)
4. [Linked List](#linked-list)
    - [Singly Linked List](#singly-linked-list)
    - [Doubly Linked List](#doubly-linked-list)
5. [Trees](#trees)
    - [Binary Tree](#binary-tree)
    - [Trie](#trie)
    - [Segment Tree](#segment-tree)
6. [Heap/Priority Queue](#heappriority-queue)

### Solution Test Function

A function that can be used to manually test a problem's solution. It needs to be slightly modified for the specific problem.

```swift
func test() {
    let sol = Solution()

    // Replace with an array of tuples, each containing the input and expected output.
    // e.g. [(input1, expected1), (input2, expected2), ...]
    let testCases = [
        // Add your test cases here
    ]
    
    for (i, testCase) in testCases.enumerated() {
        let (input, expected) = testCase

        // Replace the following line to call the method you are testing.
        // e.g. let result = sol.someMethod(input)
        let result =  sol.YourMethodHere(input)

        assert(result == expected, "Test case \(i + 1) failed. Expected \(expected), got \(result)")
        print("Test case \(i + 1) passed.")
    }
}
```

### Stack

Implements a stack (Last-In-First-Out or LIFO) using arrays, suitable for balanced parenthesis checking, undo mechanisms, etc.

```swift
class Stack<T> {
    private var elements: [T] = []
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    func peek() -> T? {
        return elements.last!
    }
    
    func push(_ element: T) {
        elements.append(element)
    }
    
    func pop() -> T? {
        return elements.popLast()!
    }
}
```

- **peek()**: Returns the top element without removing it.
- **push(element: T)**: Adds an element to the top.
- **pop()**: Removes and returns the top element.

### Queue

Implements a queue (FIRST-IN-FIRST-OUT or FIFO) using arrays, useful for task scheduling and breadth-first search algorithms.

```swift
class Queue<T> {
    private var elements: [T] = []
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    func enqueue(_ element: T) {
        elements.append(element)
    }
    
    func dequeue() -> T {
        return elements.removeFirst()
    }
    
    func peek() -> T {
        return elements.first!
    }
}
```

- **enqueue(element: T)**: Adds an element to the end.
- **dequeue()**: Removes and returns the first element.
- **peek()**: Returns the first element without removing it.

</br>


### Linked List

#### Singly Linked List

Singly linked list with insertion and deletion methods, commonly used in low-level memory management and hashing.

```swift
class ListNode {
  var val: Int
  var next: ListNode?

  init(_ val: Int) {
    self.val = val
    self.next = nil
  }
}

class LinkedList {
  var head: ListNode?
  var tail: ListNode?

  init() {
    head = ListNode(-1)
    tail = head
  }

  func insertEnd(_ val: Int) {
    tail?.next = ListNode(val)
    tail = tail?.next
  }

  func remove(_ index: Int) {
    var i = 0
    var curr = head
    while i < index && curr != nil {
      i += 1
      curr = curr?.next
    }

    if curr != nil && curr?.next != nil {
      if curr?.next === tail {
        tail = curr
      }
      curr?.next = curr!.next?.next
    }
  }

  func print() {
    var curr = head?.next
    while curr != nil {
      Swift.print(String(curr!.val) + " -> ", terminator: "")
      curr = curr?.next
    }
    Swift.print()
  }
}
```

- **insertEnd(val: Int)**: Adds a node at the end.
- **remove(index: Int)**: Removes the node at a given index.

#### Doubly Linked List

A doubly linked list that allows for easier traversal in both directions, useful for algorithms that require backtracking.

```swift
class ListNode {
  var val: Int
  var next: ListNode?
  var prev: ListNode?

  init(_ val: Int) {
    self.val = val
    self.next = nil
    self.prev = nil
  }
}

class LinkedList {
  var head: ListNode?
  var tail: ListNode?

  init() {
    head = ListNode(-1)
    tail = ListNode(-1)
    head?.next = tail
    tail?.prev = head
  }

  func insertFront(_ val: Int) {
    let newNode: ListNode? = ListNode(val)
    newNode?.prev = head
    newNode?.next = head?.next

    head!.next?.prev = newNode
    head?.next = newNode
  }

  func insertEnd(_ val: Int) {
    let newNode: ListNode? = ListNode(val)
    newNode?.next = tail
    newNode?.prev = tail?.prev

    tail!.prev?.next = newNode
    tail?.prev = newNode
  }

  func removeFront() {
    head!.next!.next?.prev = head
    head?.next = head!.next?.next
  }

  func removeEnd() {
    tail!.prev!.prev?.next = tail
    tail?.prev = tail!.prev?.prev
  }

  func print() {
    var curr = head?.next
    while curr !== tail {
      Swift.print(String(curr!.val) + " -> ", terminator: "")
      curr = curr?.next
    }
    Swift.print()
  }
}
```

- **insertFront(val: Int)**: Adds a node at the front.
- **insertEnd(val: Int)**: Adds a node at the end.


### Trees

#### Binary Tree

A basic binary tree structure often used in algorithms for sorting and searching operations.

```swift
class TreeNode {
  var val: Int
  var left: TreeNode?
  var right: TreeNode?

  init(_ val: Int) {
    self.val = val
    left = nil
    right = nil
  }
}
```

- **val**: The value stored in the node.
- **left**: Pointer to the left child node.
- **right**: Pointer to the right child node.

#### Trie

A Trie data structure for efficient retrieval of 'prefix' keys, commonly used in search engines and databases.

```swift
class TrieNode {
  var children = [Character: TrieNode]()
  var word = false
}

class Trie {
  var root: TrieNode

  init() {
    root = TrieNode()
  }
}
```

- **root**: Root node of the Trie.
- **children**: A dictionary mapping characters to their corresponding TrieNode.
- **word**: A boolean indicate if the node represents a complete word.
  
### Segment Tree

Segment Tree to perform range queries and updates, often used in competitive programming for efficient querying of arrays.

```swift
class SegmentTree {
  var sum: Int
  var left: SegmentTree?
  var right: SegmentTree?
  var L: Int
  var R: Int

  init(_ total: Int, _ L: Int, _ R: Int) {
    self.sum = total
    self.left = nil
    self.right = nil
    self.L = L
    self.R = R
  }
```

- **sum**: The sum of the range [L, R].
- **left**: Pointer to the left segment.
- **right**: Pointer to the right segment.
- **L**: The left boundary of the segment.
- **R**: The right boundary of the segment.

### Heap/Priority Queue

A heap/priority queue useful for priority-based tasks and algorithms like Dijkstra's. Can be used as a max-heap or min-heap.

```swift
class Heap {
  var heap = [0]
 
func push(_ val: Int) {
    heap.append(val)
    var i = heap.count - 1

    while i > 1 && heap[i] < heap[i / 2] {
      let tmp = heap[i]
      heap[i] = heap[i / 2]
      heap[i / 2] = tmp
      i = i / 2
    }
  }

  func pop() -> Int {
    if heap.count == 1 {
      return -1
    }
    if heap.count == 2 {
      return heap.removeLast()
    }

    let res = heap[1]
    heap[1] = heap.removeLast()
    var i = 1
    while 2 * i < heap.count {
      if (2 * i + 1 < heap.count && 
          heap[2 * i + 1] < heap[2 * i] && 
          heap[i] > heap[2 * i + 1]) {
        let tmp = heap[i]
        heap[i] = heap[2 * i + 1]
        heap[2 * i + 1] = tmp
        i = 2 * i + 1
      }
      else if heap[i] > heap[2 * i] {
        let tmp = heap[i]
        heap[i] = heap[2 * i]
        heap[2 * i] = tmp
        i = 2 * i
      }
      else {
        break
      }
    }
    return res
  }

  func top() -> Int {
    if heap.count > 1 {
      return heap[1]
    }
    return -1
  }

  func heapify(_ arr: inout [Int]) {
    arr.append(arr[0])

    heap = arr
    var cur = (heap.count - 1) / 2
    while cur > 0 {
      var i = cur
      while 2 * i < heap.count {
        if (2 * i + 1 < heap.count &&
           heap[2 * i + 1] < heap[2 * i] && 
           heap[i] > heap[2 * i + 1]) {
          let tmp = heap[i]
          heap[i] = heap[2 * i + 1]
          heap[2 * i + 1] = tmp
          i = 2 * i + 1
        }
        else if heap[i] > heap[2 * i] {
          let tmp = heap[i]
          heap[i] = heap[2 * i]
          heap[2 * i] = tmp
          i = 2 * i
        }
        else {
          break
        } 
      }
      cur -= 1
    }
  }
}
```

- **push(val: Int)**: Adds an element to the heap.
- **pop()**: Removes and returns the smallest element.
- **top()**: Returns the smallest element without removing it.
- **heapify(arr: inout [Int])**: Heapifies an existing array in-place.
  
</details>
