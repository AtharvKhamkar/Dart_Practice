// Strong Numbers are the numbers whose sum of factorial of digits is equal to the original number. Given a number, check if it is a Strong Number or not.

void main() {
  print(checkIsStrongNumber(534));
}

bool checkIsStrongNumber(int num) {
  int original = num;
  int factorialTotal = 0;

  while (num / 10 > 0) {
    int digit = num % 10;
    factorialTotal = factorialTotal + factorial(digit);
    num = num ~/ 10;
  }

  return original == factorialTotal;
}

int factorial(int num) {
  int total = 1;
  for (int i = num; i > 0; i--) {
    total = total * i;
  }

  return total;
}
