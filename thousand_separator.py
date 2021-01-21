class Solution:
    def thousandSeparator(self, n: int) -> str:
        n = str(n)[::-1]
        s = ""
        for x in range(len(n)):
            if x % 3 == 0:
                s += "."
            s += n[x]
        s = s[::-1]
        if s.endswith("."):
            return s[:-1]
        else:
            return s
