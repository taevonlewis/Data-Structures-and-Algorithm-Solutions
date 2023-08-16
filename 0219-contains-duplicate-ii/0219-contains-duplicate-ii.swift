class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
       if nums.count == 1 {
           return false
       }

       var st = Set<Int>()
       var recents = [Int]()

       for num in nums {
           if st.count > k {
               let num2remove = recents.remove(at: 0)
               st.remove(num2remove)
           }

           if st.contains(num) {
                   return true
           } else {
               st.insert(num)
               recents.append(num)
           }
       }

       return false
    }
}