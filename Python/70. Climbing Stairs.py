class Solution:
    def climbStairs(self, n: int) -> int:
        #it has pattern: 2 3 5 8 13 ... 
        #counting and replacing i in next j
        if n<=1:
            return 1
        i, j = 1, 1
        for k in range(2, n+1):
           i, j = j, i + j 
        return j
