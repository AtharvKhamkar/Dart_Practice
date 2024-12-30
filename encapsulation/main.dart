import 'person.dart';

void main() {
  Person person1 = new Person('Atharv', 22);
  person1.displayInfo();
  print("Name is ${person1.name}");
  print("Age is ${person1.age}");

  person1.setName = "Aditya";
  person1.setAge = 20;

  print("After changing values");
  person1.displayInfo();
}
