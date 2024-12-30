import 'dart:math';

void main() {
  print(
      'Generated random number from range 0 to 10 is ${generateRandomNumber(10)}');
}

int generateRandomNumber(int range) {
  Random random = new Random();
  int ran = random.nextInt(range);
  return ran;
}
