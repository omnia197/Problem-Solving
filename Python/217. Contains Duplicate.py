class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        sorted_nums = sorted(nums)
        if len(sorted_nums) <= 1:
            return False
            
        for i in range(len(sorted_nums)):
            if sorted_nums[i] - sorted_nums[i - 1] == 0:
                return True

        return False       