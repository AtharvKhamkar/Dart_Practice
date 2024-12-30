void main() {
  print('Sum of digit of ${HelperFunctions.sumOfDigits(123)}');
}

class HelperFunctions {
  static int sumOfDigits(int num) {
    int total = 0;
    while (num / 10 > 0) {
      int digit = num % 10;
      total += digit;
      num = num ~/ 10;
    }

    return total;
  }
}
