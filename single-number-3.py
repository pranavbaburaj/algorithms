class Solution:
    def singleNumber(self, nums: List[int]) -> List[int]:
        s = []
        for x in nums:
            if nums.count(x) == 1:
                s.append(x)
        return s
        
