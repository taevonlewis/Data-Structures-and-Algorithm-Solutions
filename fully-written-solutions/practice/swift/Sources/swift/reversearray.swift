class Solution {
    func reverseArr(arr: inout [Int]) -> [Int] {
        /* O(n) time, O(1) space
            Iterates througb array once and reverses it in place, n is the number of elements in the array
            `reverse()` method modifies the array in place so no additional space
        */
        // arr.reverse()
        // return arr

        /* O(n) time, O(n) space
            `reveresed()` created a reveresed view of the array in O(n) time
            for loop iterates througb the reversed array and copies elements to the new array, O(n) time
            res array is additional space O(n)
        */
        var res = Array(repeating: 0, count: arr.count)

        for (i, num) in arr.reversed().enumerated() {
            res[i] = num
        }

        return res
    }
}

func test() {
    let sol = Solution()
    let testCases = [
        (([1,2,3]), [3,2,1]),
        (([1,2,2,3]), [3,2,2,1]),
        (([1,3,2]), [2,3,1])
    ]
    
    for (i, testCase) in testCases.enumerated() {
        var (input, expected) = testCase
        let result = sol.reverseArr(arr: &input)
        assert(result == expected, "Test case \(i + 1) failed. Expected \(expected), got \(result)")
        print("Test case \(i + 1) passed.")
    }
}

// test()