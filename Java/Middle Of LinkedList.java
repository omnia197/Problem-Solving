class Solution {
    public ListNode middleNode(ListNode head) {
        ListNode node = head;
        ListNode iterator = head;

        while (iterator != null && iterator.next != null) {
            node = node.next;
            iterator = iterator.next.next;
        }

        return node;
    }
}
