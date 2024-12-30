//Given a range L and R, the task is to find the sum of all natural numbers in range L to R.

void main() {
  print('Sum of range of numbers os ${HelperFunction.sumOfRange(10, 20)}');
}

class HelperFunction {
  static int sumOfRange(int L, int R) {
    return sumOfNnumbers(R) - sumOfNnumbers(L - 1);
  }

  static int sumOfNnumbers(int n) {
    return n * (n + 1) ~/ 2;
  }
}


//1+2 = 3
// 1+2+3+4+5 = 15
//15 - 3 = 12
