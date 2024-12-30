//convert decimal number to binary

void main() {
  decimalToBinary(10);
}

void decimalToBinary(int num) {
  List<int> result = [];

  while (num / 2 > 0) {
    int digit = num % 2;
    result.add(digit);
    num = num ~/ 2;
  }

  List<int> reversedList = result.reversed.toList();

  print(reversedList);
}


//10
//10 / 2 = 5 
// digit = 0 ==>
// 10 / 2 = 5
// 5 / 2 = 2
// 5 % 2 = 1 ==>
// 5 / 2 = 2
// 2 / 2 =  2
// 2 % 2 = 0 ==>
//2 / 2 = 1
//1 / 2  
