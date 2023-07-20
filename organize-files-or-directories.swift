import Foundation

func organizeDirectories(directory: String) {
    do {
        let fileURLs = try FileManager.default.contentsOfDirectory(at: URL(fileURLWithPath: directory), includingPropertiesForKeys: nil)

        for fileURL in fileURLs {
            var isDir: ObjCBool = false
            if FileManager.default.fileExists(atPath: fileURL.path, isDirectory: &isDir) {
                if isDir.boolValue {
                    let filename = fileURL.lastPathComponent
                    let splitFilename = filename.split(separator: "-", maxSplits: 1)
                    if let firstPart = splitFilename.first, Int(firstPart) != nil {
                        let newDirectory = directory + "/" + String(splitFilename[1])
                        let newDirectoryURL = URL(fileURLWithPath: newDirectory)

                        try FileManager.default.createDirectory(at: newDirectoryURL, withIntermediateDirectories: true)

                        if !FileManager.default.fileExists(atPath: newDirectory + "/" + filename) {
                            try FileManager.default.moveItem(at: fileURL, to: newDirectoryURL.appendingPathComponent(filename))
                        } else {
                            let subFileURLs = try FileManager.default.contentsOfDirectory(at: fileURL, includingPropertiesForKeys: nil)
                            for subFileURL in subFileURLs {
                                try FileManager.default.moveItem(at: subFileURL, to: newDirectoryURL.appendingPathComponent(subFileURL.lastPathComponent))
                            }
                            if try FileManager.default.contentsOfDirectory(at: fileURL, includingPropertiesForKeys: nil).isEmpty {
                                try FileManager.default.removeItem(at: fileURL)
                            }
                        }
                    }
                }
            }
        }
    } catch {
        print("Error: \(error)")
    }
}

func organizeFiles(directory: String) {
    do {
        let fileURLs = try FileManager.default.contentsOfDirectory(at: URL(fileURLWithPath: directory), includingPropertiesForKeys: nil)

        for fileURL in fileURLs {
            var isDir: ObjCBool = false
            if FileManager.default.fileExists(atPath: fileURL.path, isDirectory: &isDir) {
                if !isDir.boolValue {
                    let filename = fileURL.lastPathComponent
                    let splitFilename = filename.split(separator: ".")

                    if splitFilename.count > 1 {
                        let newDirectory = directory + "/" + String(splitFilename[0])
                        let newDirectoryURL = URL(fileURLWithPath: newDirectory)

                        try FileManager.default.createDirectory(at: newDirectoryURL, withIntermediateDirectories: true)
                        try FileManager.default.moveItem(at: fileURL, to: newDirectoryURL.appendingPathComponent(filename))
                    }
                }
            }
        }
    } catch {
        print("Error: \(error)")
    }
}

// organizeFiles(directory: "/Users/tizzymatic/Documents/GitHub/Data-Structures-and-Algorithm-Solutions/hackerrank")
// organizeDirectories(directory: "/Users/tizzymatic/Documents/GitHub/Data-Structures-and-Algorithm-Solutions/leetcode/python")
