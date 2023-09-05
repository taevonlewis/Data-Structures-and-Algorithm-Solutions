/** 
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0 
 * func guess(_ num: Int) -> Int 
 */

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var low: Int = 1
        var high: Int = n
        while low <= n {
            let mid = (low + high) / 2
            let myGuess = guess(mid)

            if myGuess == 1 {
                low = mid + 1
            } else if myGuess == -1 {
                high = mid - 1
            } else {
                return mid
            }
        }

        return -1
    }
}