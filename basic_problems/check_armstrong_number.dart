import 'dart:math';

void main() {
  int n = 1634;
  print(
      'The number $n is armstrong number ${HelperFunction.checkArmStrongNumber(n)}');
}

class HelperFunction {
  static bool checkArmStrongNumber(int num) {
    int originalNumber = num;
    int digits = calculateDigits(num);
    int armNumber = 0;

    while (num / 10 > 0) {
      int singleDigit = num % 10;
      armNumber += pow(singleDigit, digits).toInt();
      num = num ~/ 10;
    }

    return armNumber == originalNumber;
  }

  static int calculateDigits(int num) {
    int digits = 0;

    while (num / 10 > 0) {
      if (num % 10 > 0) {
        digits++;
      }
      num = num ~/ 10;
    }

    return digits;
  }
}
