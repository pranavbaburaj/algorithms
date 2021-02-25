# https://leetcode.com/problems/search-a-2d-matrix/

def matrixSearch(matrix: list, target: int) -> bool:
    falseCount: int = 0
    for i in range(len(matrix)):
        for j in range(len(matrix[i])):
            if matrix[i][j] == target:
                return True
            else:
                if falseCount >= len(matrix) * len(matrix[i]) - 1:
                    return False
                else:
                    falseCount += 1
