void main() {
  // greeting('Atharv', 'male');
  // greeting('Aditya', 'male', 'Sir');
  // greeting('Rasika', 'female', 'madam');
  printInfo(name: 'Atharv');
  printInfo(gender: 'male');
}

void greeting(String name, String gender, [String start = 'Sir/madam']) {
  print('Hello $start $name your gender is $gender');
}

void printInfo({String? name, String? gender}) {
  print('Your name is $name and your gender is $gender');
}
