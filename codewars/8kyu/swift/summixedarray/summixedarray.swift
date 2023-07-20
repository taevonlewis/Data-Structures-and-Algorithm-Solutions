/*
DESCRIPTION:
Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.

Return your answer as a number.
*/

func sumMix(_ arr: [Any]) -> Int {
  var sum: Int = 0
  
  for i in arr {
      if let val = i as? String {
        sum += Int(val)!
      } else {
      sum += i as! Int
    }
  }
  
  return sum
}