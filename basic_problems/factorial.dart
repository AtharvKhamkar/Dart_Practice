// Have the function FirstFactorial(num) take the num parameter being passed and return the factorial of it. For example: if num = 4, then your program should return (4 * 3 * 2 * 1) = 24. For the test cases, the range will be between 1 and 18 and the input will always be an integer.

void main() {
  print(getFactorialResult(8));
}

int getFactorialResult(int num) {
  int result = 1;
  for (int i = num; i > 0; i--) {
    result = result * i;
  }

  return result;
}
