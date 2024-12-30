void main() {
  int min = 100;
  int max = 2000;
  print(
      'Palindrome numbers between range $min and $max is ${HelperFunctions.findPalindromeNumbers(min, max)}');
}

class HelperFunctions {
  static List<int> findPalindromeNumbers(int min, int max) {
    List<int> result = [];
    for (int i = min; i <= max; i++) {
      if (isPalindrome(i)) {
        result.add(i);
      }
    }
    return result;
  }

  static bool isPalindrome(int num) {
    int original = num;
    int rev = 0;

    while (num / 10 > 0) {
      rev = rev * 10 + num % 10;
      num = num ~/ 10;
    }

    return original == rev;
  }
}
