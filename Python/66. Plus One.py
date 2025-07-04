# first solution

class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        s = ""
        for n in digits:
            s+= str(n)
        s = str(int(s) + 1)
        lista = []
        for  i in range(len(s)):
            lista.append(int(s[i]))

        return lista
        

#second solution
class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        num = int(''.join(map(str, digits))) + 1
        return [int(d) for d in str(num)]
        