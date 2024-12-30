void main() {
  print('Sum of n numbers is ${HelperFunctions.findSum(20)}');
}

// void main() {
// // Declaring Variables
//   double price = 1130.2232323233233; // valid.
//   print(price.toStringAsFixed(2));
//   print(price.runtimeType);
// }

class HelperFunctions {
  static findSum(int n) {
    return n * (n + 1) ~/ 2;
  }
}
