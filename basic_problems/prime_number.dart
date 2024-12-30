void main() {
  print(HelperFunctions.isPrime(99));
}

class HelperFunctions {
  static bool isPrime(int num) {
    if (num <= 1) {
      return false;
    }

    for (int i = 2; i < num; i++) {
      if (num % i == 0) {
        return false;
      }
    }

    return true;
  }
}
