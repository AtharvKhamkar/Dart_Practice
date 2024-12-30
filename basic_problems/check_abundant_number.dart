// A number n is said to be an Abundant Number if the sum of all the proper divisors of the number denoted by sum(n) is greater than the value of the number n. And the difference between these two values is called abundance.
// Mathematically, if the below condition holds the number is said to be an Abundant number:

void main() {
  print(isAbundantNumber(21));
}

bool isAbundantNumber(int num) {
  List<int> allFactors = factors(num);
  int factorSum = 0;

  for (int i = 0; i < allFactors.length; i++) {
    factorSum += allFactors[i];
  }

  return factorSum - num > 0 ? true : false;
}

List<int> factors(int num) {
  List<int> allFactors = [];

  for (int i = 1; i < num; i++) {
    if (num % i == 0) {
      allFactors.add(i);
    }
  }

  return allFactors;
}
