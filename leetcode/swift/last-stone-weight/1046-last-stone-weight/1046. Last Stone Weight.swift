class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        var maxHeap = Heap(elements: stones)

        while maxHeap.count > 1 {
            let stone1 = maxHeap.remove()!
            let stone2 = maxHeap.remove()!

            if stone1 != stone2 {
                maxHeap.insert(stone1 - stone2)
            }
        }

        return maxHeap.peek() ?? 0
    }
}

struct Heap {
    private var elements: [Int]
    private let sort: (Int, Int) -> Bool

    init(elements: [Int]) {
        self.elements = elements
        self.sort = { $0 > $1 }
        buildHeap()
    }

    var count: Int {
        return elements.count
    }

    func peek() -> Int? {
        return elements.first
    }

    mutating func insert(_ value: Int) {
        elements.append(value)
        siftUp(from: elements.count - 1)
    }

    mutating func remove() -> Int? {
        guard !elements.isEmpty else { return nil }
        if elements.count == 1 {
            return elements.removeLast()
        } else {
            let value = elements[0]
            elements[0] = elements.removeLast()
            siftDown(from: 0)
            return value
        }
    }

    private mutating func buildHeap() {
        for i in stride(from: (elements.count / 2) - 1, through: 0, by: -1) {
            siftDown(from: i)
        }
    }

    private mutating func siftUp(from index: Int) {
        var childIndex = index
        let childValue = elements[childIndex]
        var parentIndex = (childIndex - 1) / 2

        while childIndex > 0 && sort(childValue, elements[parentIndex]) {
            elements[childIndex] = elements[parentIndex]
            childIndex = parentIndex
            parentIndex = (childIndex - 1) / 2
        }

        elements[childIndex] = childValue
    }

    private mutating func siftDown(from index: Int) {
        var parentIndex = index

        while true {
            let leftChildIndex = 2 * parentIndex + 1
            let rightChildIndex = leftChildIndex + 1
            var swapIndex = parentIndex

            if leftChildIndex < elements.count && sort(elements[leftChildIndex], elements[swapIndex]) {
                swapIndex = leftChildIndex
            }

            if rightChildIndex < elements.count && sort(elements[rightChildIndex], elements[swapIndex]) {
                swapIndex = rightChildIndex
            }

            if swapIndex == parentIndex { return }

            elements.swapAt(parentIndex, swapIndex)
            parentIndex = swapIndex
        }
    }
}
