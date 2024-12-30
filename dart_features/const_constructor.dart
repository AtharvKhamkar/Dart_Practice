void main() {
  Person per1 = const Person('Atharv', 22);
  Person per2 = const Person('Aditya', 18);
  per1.display();
  print('${per1.hashCode}');
  per2.display();
  print('${per2.hashCode}');
}

class Person {
  final String name;
  final int age;

  const Person(this.name, this.age);

  void display() {
    print('Name is $name');
    print('Age is $age');
  }
}
