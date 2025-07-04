class Solution:
    def isPalindrome(self, x: int) -> bool:
        string = str(x)
        return True if string==string[::-1] else False
        