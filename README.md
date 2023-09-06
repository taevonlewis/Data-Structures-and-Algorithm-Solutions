## Data Structures and Algorithm Solutions

This repository is a comprehensive collection of solutions to coding problems from various platforms including Codewars, Leetcode, HackerRank, Codility, GeeksforGeeks, and more when added.

## Table of Contents
1. [Programming Languages](#programming-languages)
2. [Repository Structure](#repository-structure)
3. [Problem-Solving Patterns](#problem-solving-patterns)
4. [Coding Templates](#coding-templates)

## Programming Languages

The problems in this repository have been solved using:

- Swift
- C++
- Python
  
## Repository Structure

<details>
<summary>Click to expand!</summary>
  
The 'fully-written-solutions' folder contains problems tackled from scratch. Here is what you can expect:

- Swift: For Swift, every problem has its corresponding **`.swift`** file. Swift solutions are written in a manner that promotes clarity, taking advantage of Swift's modern features for safety and readability.
- C++: Each problem has a corresponding **`.cpp`** file and a related header file. The header files are included in the main function, which calls all the headers.
- Python: Similarly, Python solutions are neatly encapsulated within individual **`.py`** files, following Pythonic conventions for clarity and efficiency.

</details>

## Problem-Solving Patterns

<details>
<summary>Click to expand!</summary>
  
### If the input array is sorted

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| Binary Search | O(logn) | O(1) |
| Two Pointers | O(n) | O(1) |
| Cyclic Sort (when dealing with numbers in a specific range) | O(n) | O(1) |

### If asked for all permutations/subsets

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| Backtracking | O(n*2^n) | O(n) |

### If given a tree

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| Depth-First Search (DFS) | O(n) | O(h) |
| Breadth-First Search (BFS) | O(n) | O(w) |

### If given a graph

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| Depth-First Search (DFS) | O(V+E) | O(V) |
| Breadth-First Search (BFS) | O(V+E) | O(V) |
| Topological Sort (for problems involving ordering or scheduling) | O(V+E) | O(V) |

### If given a linked list

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| Two Pointers (possibly fast and slow pointers) | O(n) | O(1) |
| In-place reversal of a linked list | O(n) | O(1) |

### If recursion is banned

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| Stack | O(n) | O(n) |

### If must solve in-place

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| Swap corresponding values | O(n) | O(1) |

### If asked for maximum/minimum subarray/subset/options

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| Dynamic Programming | Depends on problem | Depends on problem |
| 0/1 Knapsack (for subset problems where choices are binary, selected, or not selected) | O(nW) | O(nW) |

### If the problem involves computing prefix sums or queries on subarrays

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| Prefix Sum | O(n) for initial computation, O(1) for each query | O(n) |

### If asked for top/least K items

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| Heap | O(nlogk) | O(k) |
| Two Heaps (when you need to keep track of both the smallest and largest elements) | O(nlogk) | O(k) |
| QuickSelect | O(n), worst case O(n^2) | O(1) |
| K-way Merge (when merging K-sorted inputs) | O(nlogk) | O(k) |

### If asked for common strings

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| HashMap | O(n+m) | O(n+m) |
| Trie | O(n) | O(m) |

### If given a matrix

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| Matrix Traversal (DFS, BFS, or simple iteration) | O(mn) | O(mn) |

### If asked to find or count a specific element/configuration in a matrix

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| Dynamic Programming | O(mn) | O(mn) |
| DFS/BFS | O(mn) | O(mn) |

### If asked to perform manipulations or computations on a string

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| Two Pointers | O(n) | O(1) |
| Sliding Window | O(n) | O(1) or O(k) |
| HashMap | O(n) | O(n) |

### If dealing with intervals or ranges

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| Sort and Merge/Subtract | O(nlogn) | O(n) |
| Interval Tree | O(nlogn), O(logn) | O(n) |

### If the problem is about finding a cycle or a loop

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| Floyd's Cycle Finding Algorithm | O(n) | O(1) |
| DFS (for graph) | O(V+E) | O(V) |

### If numbers need to be converted from one base to another

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| Base Conversion | O(n) | O(n) |

### If dealing with bitwise operations

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| Bitwise XOR | O(n) | O(1) |

### If the problem involves Fibonacci numbers

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| Dynamic Programming | O(n) | O(1) or O(n) |

### Else

| Algorithm | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| HashMap/Set | O(1) | O(n) |
| Sort input | O(nlogn) | O(1) |

</details>

<!-- TEMPLATES_END -->
<!-- TEMPLATES_START -->
## Coding Templates

<details>
<summary>Click to expand!</summary>
  
### Table of Contents
1. [Stack](#stack)
2. [Queue](#queue)
3. [Linked List](#linked-list)
    - [Singly Linked List](#singly-linked-list)
    - [Doubly Linked List](#doubly-linked-list)



### Stack
A stack (Last-In-First-Out or LIFO) implemented using an array.

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
A basic queue (FIRST-IN-FIRST-OUT or FIFO) implementation.

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

### Singly Linked List

Implementation of a singly linked list.

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

Implementation of a doubly linked list.

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

---

</details>
<!-- TEMPLATES_END -->
