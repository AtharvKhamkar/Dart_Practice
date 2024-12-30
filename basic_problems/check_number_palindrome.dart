void main() {
  int n = 454;
  print('Number $n is palindrome ${HelperFunctions.isPalindrome(n)}');
}

class HelperFunctions {
  static bool isPalindrome(int num) {
    int reversed = 0;
    int original = num;

    while (num / 10 > 0) {
      reversed = reversed * 10 + num % 10;
      num = num ~/ 10;
    }

    return original == reversed;
  }
}
