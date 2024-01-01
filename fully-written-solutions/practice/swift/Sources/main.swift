// The Swift Programming Language
// https://docs.swift.org/swift-book

if let input: String = readLine() {
    let name = input.split(separator: " ")
    
    if name.count == 3 {
        let firstName = name[0]
        let middleName = name[1]
        let lastName = name[2]
        print("\(lastName), \(firstName.first!).\(middleName.first!).")
    } else if name.count == 2 {
        let firstName = name[0]
        let lastName = name[1]

        print("\(lastName), \(firstName.first!).")
    }
}

