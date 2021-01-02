class Solution:
    def maximumWealth(self, accounts: List[List[int]]) -> int:
        arr = []
        
        for x in range(len(accounts)):
            sum_ = 0
            for i in range(len(accounts[x])):
                sum_ += accounts[x][i]
            arr.append(sum_)
            
        return max(arr)
