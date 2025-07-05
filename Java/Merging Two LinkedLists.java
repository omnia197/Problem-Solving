/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution {
    public ListNode mergeTwoLists(ListNode list1, ListNode list2) {
 
        ListNode node1 = list1, node; ListNode node2 = list2;
        ListNode res = new ListNode();
        ListNode current = res;
        if(node1 == null && node2 == null){return null;}
        while(node1 !=null && node2 !=null){
            if(node1.val <= node2.val){
                current.next = node1;
                node1 = node1.next;
            }
           
            else{
                current.next = node2;
                node2 = node2.next;
            }
            current = current.next;
        }
        if (node1 != null) {
            current.next = node1;
        } else {
            current.next = node2;
        }
        

        return res.next;
    }
}