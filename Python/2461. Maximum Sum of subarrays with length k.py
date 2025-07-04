#Got a Time limit
#  maximum = 0
#         for  i in range(len(nums) -k+ 1):
#             lista = nums[i:i+k]
#             check = sum(lista if len(set(lista)) == k else [0])
#             if( check > maximum):
#                 maximum = check
#         return maximum

class Solution:
    def maximumSubarraySum(self, nums: List[int], k: int) -> int:
        seen = set()
        left = 0
        summ = 0
        maxm = 0

        for i in range(len(nums)):
            while nums[i] in seen:
                seen.remove(nums[left])
                summ -= nums[left]
                left += 1

            seen.add(nums[i])
            summ += nums[i]

            if i - left + 1 == k:
                maxm = max(maxm, summ)
                seen.remove(nums[left])
                summ -= nums[left]
                left += 1

        return maxm

