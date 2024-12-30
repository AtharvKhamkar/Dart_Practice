enum Gender { Male, Female }

class Person {
  String name;
  int age;
  Gender gender;

  Person(this.name, this.age, this.gender);

  void display() {
    print('Name is $name');
    print('Age is $age');
    print('Gender is $gender');
  }
}

void main() {
  Person per = Person('Atharv', 22, Gender.Male);
  per.display();
}
