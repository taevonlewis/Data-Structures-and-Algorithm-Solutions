## Data Structures and Algorithm Solutions

This repository is a comprehensive collection of solutions to coding problems from various platforms including Codewars, Leetcode, Binary Search, Algo Expert, GeeksforGeeks, and others.

### Repository Structure

The 'fully written solutions' folder contains problems tackled from scratch. Here is what you can expect:

- C++: Each problem has a corresponding **`.cpp`** file and a related header file. The header files are included in the main function, which calls all the headers. If you want to focus on a single problem, you can comment out the function calls for the other problems.
- Python: Similarly, Python solutions are neatly encapsulated within individual **`.py`** files, following Pythonic conventions for clarity and efficiency.

### Programming Languages

The problems in this repository have been solved using:

- C++
- Python

### Exploring the Solutions

Feel free to dive into the code. The aim of this repository is not just to provide solutions, but also to serve as a learning resource. Whether you're preparing for a technical interview, learning a new data structure, or love solving problems, there's something here for you.

</br>

## Problem-Solving Patterns

**If the input array is sorted:**
- Binary Search
- Two Pointers
- Cyclic Sort (when dealing with numbers in a specific range, for finding missing or duplicate numbers)

**If asked for all permutations/subsets:**
- Backtracking

**If given a tree:**
- Depth-First Search (DFS)
- Breadth-First Search (BFS)

**If given a graph:**
- Depth-First Search (DFS)
- Breadth-First Search (BFS)
- Topological Sort (for problems involving ordering or scheduling)

**If given a linked list:**
- Two Pointers (possibly fast and slow pointers)
- In-place reversal of a linked list

**If recursion is banned:**
- Stack

**If must solve in-place:**
- Swap corresponding values

**If asked for maximum/minimum subarray/subset/options:**
- Dynamic Programming
- 0/1 Knapsack (for subset problems where choices are binary, selected, or not selected)

**If asked for top/least K items:**
- Heap
- Two Heaps (when you need to keep track of both the smallest and largest elements)
- QuickSelect
- K-way Merge (when merging K-sorted inputs)

**If asked for common strings:**
- HashMap
- Trie

**If given a matrix:**
- Matrix Traversal (DFS, BFS, or simple iteration)

**If asked to find or count a specific element/configuration in a matrix:**
- Dynamic Programming (for counting paths, etc.)
- DFS/BFS (for finding islands, etc.)

**If asked to perform manipulations or computations on a string:**
- Two Pointers
- Sliding Window
- HashMap

**If dealing with intervals or ranges:**
- Sort and then either merge or subtract intervals
- Interval Tree

**If the problem is about finding a cycle or a loop:**
- Floyd's Cycle Finding Algorithm
- DFS (for graph)

**If numbers need to be converted from one base to another:**
- Base Conversion

**If dealing with bitwise operations:**
- Bitwise XOR (when needing to find a number that appears once while others appear twice)

**If the problem involves Fibonacci numbers:**
- Dynamic Programming (Bottom-up calculation or memoization can optimize repeated calculations)

**Else:**
- HashMap/Set for O(1) time & O(n) space
- Sort input for O(nlogn) time and O(1) space
