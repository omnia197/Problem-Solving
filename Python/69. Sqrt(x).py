class Solution:
    def mySqrt(self, x: int) -> int:
        i = 0
        while i >=0:
            res1 = i*i
            res2 = (i+1) * (i+1)
            if x == res1:
                return i
            elif x == res2:
                return i+1
            elif x> res1 and x<res2:
                return i
            else:
                i= i+1


        