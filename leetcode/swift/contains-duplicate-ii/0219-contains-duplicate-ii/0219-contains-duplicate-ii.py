class Solution:
    def containsNearbyDuplicate(self, nums: List[int], k: int) -> bool:
        recents = {}

        for i, num in enumerate(nums):
            if num in recents and i - recents[num] <= k:
                return True
                
            recents[num] = i

        return False