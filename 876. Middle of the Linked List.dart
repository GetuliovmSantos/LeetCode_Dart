class ListNode {
  int val;
  ListNode? next;

  // Construtor da classe ListNode, que inicializa os valores.
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? middleNode(ListNode? head) {
    // Cria uma lista para armazenar os nós da lista ligada.
    List<ListNode> list = [];
    int count = 0;

    // Percorre a lista ligada e adiciona cada nó à lista.
    while (head != null) {
      list.add(head);
      head = head.next;
      count++;
    }

    // Retorna o nó do meio da lista.
    return list[count ~/ 2];
  }
}
