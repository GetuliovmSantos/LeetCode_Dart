class Solution {
  // Função para contar números negativos em uma matriz ordenada
  int countNegatives(List<List<int>> grid) {
    int count = 0; // Inicializa o contador de números negativos

    // Itera sobre cada linha da matriz
    for (var i in grid) {
      // Itera sobre cada elemento da linha
      for (var j in i) {
        // Verifica se o elemento é negativo
        if (j < 0) count++;
      }
    }

    return count; // Retorna o número total de elementos negativos
  }
}