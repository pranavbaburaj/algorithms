import string

class Solution:
    def is_even(self, n, t):
        return n % 2 == 0 and t % 2 == 0
    
    def split_by_index(self, i, e):
        s = string.ascii_lowercase
        idx = 0
        final = ""
        data = [i, e]
        for x in range(len(data)):
            for i in range(data[x]):
                final += s[idx]
            idx += 1
        return final
    
    def generateTheString(self, n: int) -> str:
        if self.is_even(n, 0):
            data = [n, 0]
            while self.is_even(data[0], data[1]):
                data[0] -= 1
                data[1] += 1
            return self.split_by_index(data[0], data[1])
        else:
            return self.split_by_index(n, 0)
