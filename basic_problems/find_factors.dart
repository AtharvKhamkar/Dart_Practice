void main() {
  int num = 100;
  print(
      "Prime factors of a number $num are ${HelperFunction.findFactors(num)}");
}

class HelperFunction {
  static List<int> findFactors(int num) {
    List<int> result = [];

    for (int i = 1; i <= num; i++) {
      if (num % i == 0) {
        result.add(i);
      }
    }
    return result;
  }
}
