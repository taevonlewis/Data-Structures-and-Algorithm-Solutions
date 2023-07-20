/*
DESCRIPTION:
Simple, given a string of words, return the length of the shortest word(s).

String will never be empty and you do not need to account for different data types.
*/

func find_short(_ str: String) -> Int {
  let arr = str.split(separator: " ")
  var res: Int = arr[0].count
  
  for i in arr {
    res = min(res, i.count)
  }
  
  return res
}