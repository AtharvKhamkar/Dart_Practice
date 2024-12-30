import 'dart:io';

void main() {
  print('Enter principle');
  int principle = int.parse(stdin.readLineSync()!);
  print('Enter rate');
  int rate = int.parse(stdin.readLineSync()!);
  print('Time');
  int time = int.parse(stdin.readLineSync()!);

  print(
      'Principle is $principle rate is $rate and time is $time then the simple interest is ${calculateSimpleInterest(principle, rate, time)}');
}

int calculateSimpleInterest(int principle, int rate, int time) =>
    principle * rate * time ~/ 100;
