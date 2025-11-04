class Solution(object):
    def isPalindrome(self, x):
        num_str = str(x)
        if num_str == num_str[::-1]:
            return True
        else:
            return False
