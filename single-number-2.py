class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        s = []
        for x in range(len(nums)):
            s.append(nums.count(nums[x]))
        return nums[s.index(min(s))]
        
