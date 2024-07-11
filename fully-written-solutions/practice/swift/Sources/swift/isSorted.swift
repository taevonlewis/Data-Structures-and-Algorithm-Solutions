func isSorted(_ arr: [Int]) -> Bool {
    var currNum: Int = arr[0]

    for num in arr {
        if num < currNum {
            return false
        }

        currNum = num
    }

    return true
}

// print(isSorted([1,2,3]))
// print(isSorted([1,2,2,3]))
// print(isSorted([2,1,2,3]))