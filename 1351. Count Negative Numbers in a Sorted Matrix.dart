class Solution {
  int countNegatives(List<List<int>> grid) {
    int count = 0;

    for (var i in grid) {
      for (var j in i) {
        if (j < 0) count++;
      }
    }

    return count;
  }
}

void main(List<String> args) {
  Solution s = Solution();

  print(s.countNegatives([
    [4, 3, 2, -1],
    [3, 2, 1, -1],
    [1, 1, -1, -2],
    [-1, -1, -2, -3]
  ]));
}
