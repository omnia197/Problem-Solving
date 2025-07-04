class Solution:
    def romanToInt(self, s: str) -> int:
        roman ={'I':1, 'V':5, 'X':10, 'L':50, 'C':100, 'D':500, 'M':1000}
        prev = 0
        total = 0
        for c in reversed(s):
            value = roman[c]
            if value >= prev:
                total += value
                prev = value
            else:
                total -= value

        return total



        