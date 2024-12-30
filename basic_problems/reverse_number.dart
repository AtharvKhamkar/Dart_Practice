import 'dart:math';

void main() {
  print(HelperFunctions.reverse(12345));
}

class HelperFunctions {
  static int reverseNumber(int num) {
    int totalDigits = countDigits(num);
    int result = 0;

    while (num / 10 > 0) {
      int digit = num % 10;
      result += digit * pow(10, totalDigits).toInt();
      totalDigits--;
      num = num ~/ 10;
    }

    return result;
  }

  static int countDigits(int num) {
    int count = 0;
    int temp = num;
    while (temp ~/ 10 > 0) {
      temp = temp ~/ 10;
      count++;
    }

    return count;
  }

  //Better approach for reversing number
  static int reverse(int num) {
    int revNumber = 0;
    while (num > 0) {
      revNumber = revNumber * 10 + num % 10;
      num = num ~/ 10;
    }
    return revNumber;
  }
}
