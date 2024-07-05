/*
Given an array of strings arr, return an array where all strings with the same anagram are grouped together. All the strings 
are made of lowercase characters "a" through "z".

First Few Test Cases:
groupAnagrams(['baa', 'aab', 'cab', 'bad', 'abd', 'dab'])
# [['baa', 'aab'], ['cab'], ['bad', 'abd', 'dab']]

groupAnagrams(['aab', 'aba', 'abb', 'aba'])
# [['aab', 'aba', 'aba'], ['abb']]

groupAnagrams(['a'])
# [['a']]
*/

func groupAnagrams(_ arr: [String]) -> [[String]] {
    var anagrams = [[String]]()
    var temp = [String: [String]]()

    for str in arr {
        let key = findAnagramKey(str)
        if temp[key] != nil {
            temp[key]!.append(str)
        } else {
            temp[key] = [str]
        }
    }

    for (key, val) in temp {
        anagrams.append(val)
    }

    // for outerArr in anagrams {
    //     for element in outerArr {
    //         print(element)
    //     }
    // }

    return anagrams
}

func findAnagramKey(_ str: String) -> String {
    var charCnt = [Int](repeating: 0, count: 26)
    let asciiOffset = Character("a").asciiValue!

    for char in str {
        charCnt[Int(char.asciiValue! - asciiOffset)] += 1
    }

    var key: String = ""
    for val in charCnt {
        key += "\(val)"
    }

    return key
}

print(groupAnagrams(["baa", "aab", "cab", "bad", "abd", "dab"]))
// print(groupAnagrams(["aab", "aba", "abb", "aba"]))
// print(groupAnagrams(["a"]))
