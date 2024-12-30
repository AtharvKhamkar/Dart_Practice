void main() {
  int n = 02349123;
  print(
      'Largest and Smallest digits of a numbers are ${HelperFunctions.findSmallLargeDigits(n)}');
}

class HelperFunctions {
  static List<int> findSmallLargeDigits(int num) {
    int original = num;
    int smallest = 9;
    int largest = 0;
    List<int> result = [];

    //code for largest digit
    while (num / 10 > 0) {
      int digit = num % 10;
      if (digit > largest) {
        largest = digit;
      }
      num = num ~/ 10;
    }

    result.add(largest);

    int temp = original;

    while (temp / 10 > 0) {
      int digit = temp % 10;
      if (digit < smallest) {
        smallest = digit;
      }

      temp = temp ~/ 10;
    }
    result.add(smallest);
    return result;
  }
}
