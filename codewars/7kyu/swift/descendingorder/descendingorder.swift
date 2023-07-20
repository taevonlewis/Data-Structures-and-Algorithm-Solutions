/*
DESCRIPTION:
Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

Examples:
Input: `42145` Output: `54421`

Input: `145263` Output: `654321`

Input: `123456789` Output: `987654321`
*/

func descendingOrder(of number: Int) -> Int {
  var counts = Array(repeating: 0, count: 10)
  var num = number
  
  while num > 0 {
    counts[num % 10] += 1
    num /= 10
  }
  
  var resultStr = ""
  for digit in stride(from: 9, through: 0, by: -1) {
    resultStr += String(repeating: String(digit), count: counts[digit])
  }
  
  if let res = Int(resultStr) {
    return res
  } else {
    return 0
  }
}