class Solution {
  // Método que encontra dois números em uma lista que somam um valor alvo
  List<int> twoSum(List<int> nums, int target) {
    // Mapa para armazenar os valores e seus índices
    Map<int, int> values = {};

    // Itera sobre cada elemento da lista
    for (var i = 0; i < nums.length; i++) {
      // Calcula o valor necessário para atingir o alvo
      int value = target - nums[i];

      // Verifica se o valor necessário já está no mapa
      if (values.containsKey(value)) {
        // Se estiver, retorna os índices do valor necessário e do valor atual
        return [values[value]!, i];
      }
      // Armazena o valor atual e seu índice no mapa
      values[nums[i]] = i;
    }

    // Se não encontrar nenhum par que some ao alvo, retorna uma lista vazia
    return [];
  }
}
