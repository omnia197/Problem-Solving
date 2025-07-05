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
    public boolean isPalindrome(ListNode head) {
        ListNode node = head;
        Stack<Integer> stack1 = new Stack<>();

        // fille the stack
        while(node != null){
            stack1.push(node.val);
            node = node.next;
        }

        //check stack and linkedlist elements
        while(head!= null){
            int num = stack1.pop();
            if(head.val != num)
            return false;
            head = head.next;
        }
        return true;


        
        
    }
}