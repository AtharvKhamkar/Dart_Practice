void main() {
  Student student1 = new Student('Atharv', 20, 'F20111011', '7th Sem');
  student1.displayInfo();
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayInfo() {
    print('Name of the person is $name and age is $age');
  }
}

class Student extends Person {
  String registrationNumber;
  String sem;

  Student(String name, int age, this.registrationNumber, this.sem)
      : super(name, age);

  void displayInfo() {
    print(
        'Student name is $name \nStudent age is $age \nRegistration number is $registrationNumber \nsemister is $sem');
  }
}
