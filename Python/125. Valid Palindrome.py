import re
class Solution:
    def isPalindrome(self, s: str) -> bool:
        res = ''.join([char.lower() for char in s if char.isalnum()])
        return res == res[::-1]
        