class Solution:
    def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
        num3 = sorted(nums1 + nums2)
        idx = len(num3)//2
        if len(num3) %2 == 0:
            output = (num3[idx] + num3[idx - 1])/2
        else:
            output = num3[idx]
        
        return output
        
        