func containsDuplicate(_ arr: [Int]) -> Bool {
    var st = Set<Int>()

    for num in arr {
        if st.contains(num) {
            return true
        }

        st.insert(num)
    }

    return false
}

print(containsDuplicate([9,2,3,9]))
print(containsDuplicate([5,4,5,9]))
print(containsDuplicate([9,2,3,7]))