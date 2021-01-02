class Solution:
    def flipAndInvertImage(self, A: List[List[int]]) -> List[List[int]]:
        for x in range(len(A)):
            A[x].reverse()
            
        for i in range(len(A)):
            for j in range(len(A[i])):
                if A[i][j] == 0:
                    A[i][j] = 1
                else:
                    A[i][j] = 0
        
        return A
