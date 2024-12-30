import 'dart:math';

void main() {
  print(findGcd(98, 56));
}

int findGcd(int num1, int num2) {
  int result = min(num1, num2);

  while (result > 0) {
    if (num1 % result == 0 && num2 % result == 0) {
      break;
    }
    result--;
  }
  return result;
}
