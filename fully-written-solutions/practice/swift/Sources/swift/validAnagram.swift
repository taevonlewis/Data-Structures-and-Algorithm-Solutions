func validAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count {
        return false
    }

    // var charCnt = [Character: Int]()

    // for char in s {
    //     charCnt[char, default: 0] += 1
    // }

    // for char in t {
    //     charCnt[char, default: 0] -= 1

    //     if charCnt[char]! < 0 {
    //         return false
    //     }
    // }

    var charCnt = [Int](repeating: 0, count: 26)
    let asciiOffset = Character("a").asciiValue!

    for char in s {
        charCnt[Int(char.asciiValue! - asciiOffset)] += 1
    }

    for char in t {
        charCnt[Int(char.asciiValue! - asciiOffset)] -= 1

        if charCnt[Int(char.asciiValue! - asciiOffset)] < 0 {
            return false
        }
    }

    return true
}

// print(validAnagram("keen", "knee"))
// print(validAnagram("baa", "bba"))
// print(validAnagram("car", "arc"))
// print(validAnagram("rat", "glass"))
