import Foundation

/*
    Restate the Problem: 
        Given an array of UIElements, find the target attribute and return
            each index in a tuple in order.

    Identify Inputs and Outputs:
        Input: elements: [UIElement], targetAttribute: String
        Output: indices: [(Int, Int)] tuple

    Map Inputs to Outputs:
        For each element, think:
         - How can we search through the array to get each label and index?

    Outline the Constraints and Edge Cases:
        Constraints: array count 0 <= 1000, UIElement's attribute always a non-empty
            string, target attribute string non-empty, tuple indices in ascending order
        Edge cases: array may be empty

    Choose an Approach (High-Level Plan):
        Approach:
        - Step 1: Create results tuple
        - Step 2: Loop through elements array
        - Step 3: Check for target attribute
        - Step 4: Return results tuple containing indices

        Time complexity: O(n)
        Space complexity: O(n)

    Check for Edge Cases:
        If elements array is empty:
            return [(-1, -1)]
*/

struct UIElement {
    var attribute: String
}

func findMatchingUIElements(_ elements: [UIElement], _ targetAttribute: String) -> [(Int, Int)] {
    guard elements.count > 1 else {
        return [(-1, -1)]
    }

    var matchingIndices: [Int] = []
    var result = [(Int, Int)]()

    for (idx, element) in elements.enumerated() {
        if element.attribute == targetAttribute {
            matchingIndices.append(idx)
        }
    }

    for i in 0..<matchingIndices.count {
        for j in i + 1..<matchingIndices.count {
            result.append((matchingIndices[i], matchingIndices[j]))
        }
    }

    return result
}

public func printMatchingUIElements() {
    let elements = [
        UIElement(attribute: "button"),
        UIElement(attribute: "label"),
        UIElement(attribute: "button"),
        UIElement(attribute: "textfield"),
        UIElement(attribute: "label")
    ]

    let targetAttribute = "label"
    let result = findMatchingUIElements(elements, targetAttribute)  

    print(result)
}