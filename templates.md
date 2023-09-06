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
