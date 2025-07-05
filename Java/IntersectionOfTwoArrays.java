import java.util.Arrays;
import java.util.TreeSet;
class Solution {
    public int[] intersection(int[] nums1, int[] nums2) {
        Arrays.sort(nums1);
        Arrays.sort(nums2);

        TreeSet <Integer> res = new TreeSet<>();
    
        for(int i =0; i<nums1.length; i++){
           for(int j =0; j<nums2.length; j++){
            if(nums1[i] == nums2[j])
            res.add(nums1[i]);
           }
        }
        int n = res.size(); 
        int arr[] = new int[n]; 

        int i =0;
        for (int  g : res) 
            arr[i++] = g; 
        
        return arr;
    }
}