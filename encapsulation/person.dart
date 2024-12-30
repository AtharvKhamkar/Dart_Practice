class Person {
  String _name;
  int _age;

  String get name => _name;

  int get age => _age;

  set setName(String name) {
    if (name.isNotEmpty) {
      _name = name;
    }
  }

  set setAge(int age) {
    if (age > 0 && age < 150) {
      _age = age;
    }
  }

  Person(this._name, this._age);

  void displayInfo() {
    print('Name of the person is ${_name} and age is ${_age}');
  }
}
