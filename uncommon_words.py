class Solution:  
    def count(self, x, d):
        t = 0
        for i in range(len(d)):
            if d[i] == x:
                t += 1
        return t
    
    def uncommonFromSentences(self, A: str, B: str) -> List[str]:
        data = A.split(" ") + B.split(" ")
        arr = []
        for x in range(len(data)):
            if self.count(data[x], data) == 1:
                arr.append(data[x])
        return arr
        
