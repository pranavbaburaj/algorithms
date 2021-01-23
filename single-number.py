class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        sizes = []
        for x in range(len(nums)):
            sizes.append(nums.count(nums[x]))
        return nums[sizes.index(min(sizes))]
        
