class Solution {
    func romanToInt(_ s: String) -> Int {
        var roman: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        var res: Int = 0
        var arr = Array(s)

        if let val = roman[arr[0]] {
            res = val
        }

        for i in 1..<arr.count {
            let prev = roman[arr[i - 1]]
            let curr = roman[arr[i]]

            if prev != nil, curr != nil {
                if prev! < curr! {
                    res += curr! - (2 * prev!)
                } else {
                    res += curr!
                }
            }
        }

        return res
    }
}