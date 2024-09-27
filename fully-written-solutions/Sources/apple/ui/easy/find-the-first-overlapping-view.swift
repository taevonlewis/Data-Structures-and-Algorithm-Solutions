import Foundation

/*
    Restate the Problem: 
        Given an array of tuples, find if the views are overlapping and 
            return the indices of the overlapping views.

    Identify Inputs and Outputs:
        Input: array of tuples: [(x, y, width, height)] (Int)
        Output: tuple of indices (Int, Int), indicating the first overlapping views' indices.
                If no overlap is found, return (-1, -1).

    Map Inputs to Outputs:
        - We will use two pointers to check pairs of views.
        - For each pair of views, we'll check if their boundaries overlap.
        - If the views overlap, return the indices of those views. If no views overlap, return (-1, -1).

    Outline the Constraints and Edge Cases:
        Constraints: 
          - Always at least one view, coordinates and dimensions from 0 to 10^4.
          - Views are guaranteed to be rectangular and axis-aligned (no rotations).
        
        Edge cases: 
          - Only one view, where no overlap can occur.
          - All views are non-overlapping.
          - All views overlap with one another.

    Choose an Approach (High-Level Plan):
        Approach:
        - Step 1: Initialize two pointers, one starting at the first view (i) and the other starting just after it (j).
        - Step 2: Compare the views at i and j to see if they overlap using the overlap conditions for rectangles.
        - Step 3: If no overlap is found, increment pointer j to check other views while pointer i stays the same.
        - Step 4: Once j reaches the end, increment i and reset j to i+1.
        - Final Step: Return the indices of the first overlapping views or (-1, -1) if no overlap is found.

        Time complexity: O(n^2), where n is the number of views (since we still compare every pair of views but more efficiently using pointers).
        Space complexity: O(1), as we are only using two pointers and not storing any intermediate results.

    Create a Plan and Break it into Steps:
        Plan:
        1. Initialize two pointers `i` and `j` (i at 0 and j at 1).
        2. For each pair of views (view[i] and view[j]), check if they overlap:
            - View[i] is positioned at (x1, y1) with dimensions (width1, height1).
            - View[j] is positioned at (x2, y2) with dimensions (width2, height2).
            - Use the conditions to check for overlap:
              - If `x1 + width1 <= x2` or `x2 + width2 <= x1`, there is no horizontal overlap.
              - If `y1 + height1 <= y2` or `y2 + height2 <= y1`, there is no vertical overlap.
            - If neither of these conditions is met, the views overlap.
        3. If overlap is found, return (i, j).
        4. If `j` reaches the end, increment `i` and reset `j = i + 1`.
        5. If no overlap is found, return (-1, -1).

    Check for Edge Cases:
        - If there's only one view, return (-1, -1).
        - If no views overlap after iterating through all pairs, return (-1, -1).
*/

func findFirstOverlappingView(_ views: [(x: Int, y: Int, width: Int, height: Int)]) -> (Int, Int) {
    for i in 0..<views.count {
        for j in i + 1..<views.count {
            if views[i].x + views[i].width > views[j].x && 
               views[j].x + views[j].width > views[i].x &&
               views[i].y + views[i].height > views[j].y &&
               views[j].y + views[j].height > views[i].y {
                return (i, j)
            }
        }
    }

    return (-1, -1)
}

public func printFirstOverlappingView() {
    let views1 = [(0, 0, 10, 10), (5, 5, 10, 10), (20, 20, 5, 5)]
    let views2 = [(0, 0, 10, 10), (20, 20, 10, 10)]

    print(findFirstOverlappingView(views1))
    print(findFirstOverlappingView(views2))
}