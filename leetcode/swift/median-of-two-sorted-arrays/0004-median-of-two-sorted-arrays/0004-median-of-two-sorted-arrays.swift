class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var smallArray = nums1
        var largeArray = nums2
        if nums1.count > nums2.count {
            smallArray = nums2
            largeArray = nums1
        }
        
        let x = smallArray.count
        let y = largeArray.count
        var low = 0
        var high = x
        
        while low <= high {
            let partitionX = (low + high) / 2
            let partitionY = (x + y + 1) / 2 - partitionX
            
            let maxX = (partitionX == 0) ? Int.min : smallArray[partitionX - 1]
            let maxY = (partitionY == 0) ? Int.min : largeArray[partitionY - 1]
            
            let minX = (partitionX == x) ? Int.max : smallArray[partitionX]
            let minY = (partitionY == y) ? Int.max : largeArray[partitionY]
            
            if maxX <= minY && maxY <= minX {
                if (x + y) % 2 == 0 {
                    return Double(max(maxX, maxY) + min(minX, minY)) / 2.0
                } else {
                    return Double(max(maxX, maxY))
                }
            } else if maxX > minY {
                high = partitionX - 1
            } else {
                low = partitionX + 1
            }
        }
        
        return 0.0
    }
}
