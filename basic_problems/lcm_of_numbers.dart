//Programe to find LCM of 2 numbers

import 'dart:math';

void main() {
  print(findLCM(12, 18));
}

int findLCM(int num1, int num2) {
  int total = num1 * num2;

  int lcm = total ~/ findGcd(num1, num2);

  return lcm;
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
