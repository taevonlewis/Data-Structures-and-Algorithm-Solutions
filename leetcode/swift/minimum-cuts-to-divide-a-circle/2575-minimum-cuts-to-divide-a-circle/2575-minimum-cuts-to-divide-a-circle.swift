class Solution {
    func numberOfCuts(_ n: Int) -> Int {
        if n == 1 {
            return 0
        } else if n % 2 == 0 {
            return n / 2
        } else {
            return n
        }
    }
}