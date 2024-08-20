
class KthLargest {
    private var heap: [Int]
    private let k: Int

    init(_ k: Int, _ nums: [Int]) {
        self.k = k
        self.heap = Array(nums.prefix(k))
        buildHeap()

        for num in nums.dropFirst(k) {
            add(num)
        }
    }

    func add(_ val: Int) -> Int {
        if heap.count < k {
            heap.append(val)
            siftUp(heap.count - 1)
        } else if val > heap[0] {
            heap[0] = val
            siftDown(0)
        }
        return heap[0]
    }

    private func buildHeap() {
        for i in stride(from: (heap.count / 2) - 1, through: 0, by: -1) {
            siftDown(i)
        }
    }

    private func siftDown(_ index: Int) {
        let count = heap.count
        var parentIndex = index

        while true {
            let leftChildIndex = 2 * parentIndex + 1
            let rightChildIndex = 2 * parentIndex + 2
            var smallest = parentIndex

            if leftChildIndex < count && heap[leftChildIndex] < heap[smallest] {
                smallest = leftChildIndex
            }

            if rightChildIndex < count && heap[rightChildIndex] < heap[smallest] {
                smallest = rightChildIndex
            }

            if smallest == parentIndex { return }

            heap.swapAt(parentIndex, smallest)
            parentIndex = smallest
        }
    }

    private func siftUp(_ index: Int) {
        var childIndex = index
        let childValue = heap[childIndex]
        var parentIndex = (childIndex - 1) / 2

        while childIndex > 0 && childValue < heap[parentIndex] {
            heap[childIndex] = heap[parentIndex]
            childIndex = parentIndex
            parentIndex = (childIndex - 1) / 2
        }

        heap[childIndex] = childValue
    }
}

/**
 * Your KthLargest object will be instantiated and called as such:
 * let obj = KthLargest(k, nums)
 * let ret_1: Int = obj.add(val)
 */