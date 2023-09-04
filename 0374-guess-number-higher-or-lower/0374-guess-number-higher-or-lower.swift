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
        var l: Int = 1
        var h: Int = n

        while true {
            let m = l + (h - l) / 2
            let myGuess = guess(m)

            if myGuess == 1 {
                l = m + 1
            } else if myGuess == -1 {
                h = m - 1
            } else {
                return m
            }
        }

        return -1
    }
}