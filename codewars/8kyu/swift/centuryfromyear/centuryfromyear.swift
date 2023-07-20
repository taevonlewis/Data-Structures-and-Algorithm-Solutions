/*
DESCRIPTION:
Introduction
The first century spans from the year 1 up to and including the year 100, the second century - from the year 101 up to and including the year 200, etc.

Task
Given a year, return the century it is in.

Examples
```
1705 --> 18
1900 --> 19
1601 --> 17
2000 --> 20
```
*/

func century(_ year: Int) -> Int {
  let quotient = year / 100
  let rem = year % 100
  
  if rem > 0 {
    return quotient + 1
  }
  
  return quotient
}