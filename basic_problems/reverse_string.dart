// Have the function FirstReverse(str) take the str parameter being passed and return the string in reversed order. For example: if the input string is "Hello World and Coders" then your program should return the string sredoC dna dlroW olleH.

void main() {
  print(reverseString('Hello World'));
}

String reverseString(String str) {
  String reversedString = '';

  for (int i = str.length - 1; i >= 0; i--) {
    reversedString += str[i];
  }

  return reversedString;
}
