//Kth largest factor of number N
// Input: N = 12, K = 3
// Output: 4
// Explanation: The factors of 12 are {1, 2, 3, 4, 6, 12}. The largest factor is 12 and the 3rd largest factor is 4.

void main() {
  print(kthLargestFactor(30, 2));
}

int kthLargestFactor(int num, int k) {
  List<int> factors = [];

  for (int i = 1; i <= num; i++) {
    if (num % i == 0) {
      factors.add(i);
    }
  }

  List<int> reversedList = factors.reversed.toList();

  print(reversedList);

  return reversedList[k - 1];
}
