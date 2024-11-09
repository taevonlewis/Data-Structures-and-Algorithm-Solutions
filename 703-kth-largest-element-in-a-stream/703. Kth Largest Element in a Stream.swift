
class KthLargest {
    private var minHeap: [Int] // Min-heap to store the k largest elements
    private let k: Int // The kth largest element to track

    init(_ k: Int, _ nums: [Int]) {
        self.k = k
        self.minHeap = []
        for num in nums {
            add(num) // Add each number to the heap
        }
    }
    
    func add(_ val: Int) -> Int {
        if minHeap.count < k {
            minHeap.append(val) // Add value if heap has less than k elements
            minHeap.sort() // Sort to maintain heap property
        } else if val > minHeap[0] {
            minHeap[0] = val // Replace the smallest if the new value is larger
            minHeap.sort() // Sort to maintain heap property
        }
        return minHeap[0] // Return the kth largest element
    }
}

/**
 * Your KthLargest object will be instantiated and called as such:
 * let obj = KthLargest(k, nums)
 * let ret_1: Int = obj.add(val)
 */