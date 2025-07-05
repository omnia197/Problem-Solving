class Solution {
    public ListNode deleteDuplicates(ListNode head) {
       if(head == null || head.next == null){
            return head;
        }
    ListNode ptr1 = head;
    while(ptr1 != null && ptr1.next != null){
    ListNode ptr2 = ptr1;
    while(ptr2.next != null){
            if(ptr1.val == ptr2.next.val){
                ptr2.next = ptr2.next.next;
}           else {
                ptr2 = ptr2.next;
}
}
            ptr1 = ptr1.next;
}
return head;
}
}