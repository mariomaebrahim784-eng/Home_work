class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}
class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev = null;
    ListNode? current = head;

    while (current != null) {
      ListNode? nextNode = current.next;
      current.next = prev;
      prev = current;
      current = nextNode;
    }

    return prev;
  }
}

/*class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}

void printList(ListNode? head) {
  while (head != null) {
    print(head.val);
    head = head.next;
  }
}
ListNode? reverseList(ListNode? head) {
  ListNode? prev = null;
  ListNode? current = head;

  while (current != null) {
    ListNode? nextNode = current.next; 
    current.next = prev;               
    prev = current;                  
    current = nextNode;                
  }

  return prev; 
}

void main() {
  ListNode head = ListNode(1, ListNode(2, ListNode(3, ListNode(4))));
  print("Before reverse:");
  printList(head);

  ListNode? newHead = reverseList(head);
  print("After reverse:");
  printList(newHead);
}*/