class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    // Verifica se a revista tem menos caracteres que a nota de resgate.
    if (magazine.length < ransomNote.length) return false;

    // Cria um mapa para contar a frequência de cada caractere na revista.
    Map<String, int> m = {};

    // Conta a frequência de cada caractere na revista.
    for (var i in magazine.split('')) {
      if (!m.containsKey(i)) {
        m[i] = 1;
      } else {
        m[i] = m[i]! + 1;
      }
    }

    // Verifica se cada caractere da nota de resgate pode ser encontrado na revista.
    for (var i in ransomNote.split("")) {
      if (m.containsKey(i)) {
        if (m[i] == 0) return false;

        m[i] = m[i]! - 1;
      } else {
        return false;
      }
    }

    // Se todos os caracteres da nota de resgate puderem ser encontrados na revista, retorna true.
    return true;
  }
}
