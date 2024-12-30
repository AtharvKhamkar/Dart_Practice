class Person {
  String? _name;
  int? _age;

  Person(this._name, this._age);

  void setName(String name) {
    this._name = name;
  }

  void setAge(int age) {
    this._age = age;
  }

  String get getName => this._name ?? 'No name found';
  int get getAge => this._age ?? 1;

  void display() {
    print('Name is ${_name} and age is ${_age}');
  }
}

void main() {
  Person per = Person('Atharv', 22);
  print('Name is ${per.getName}');
  print('Age is ${per.getAge}');

  per.display();

  per.setName('Aditya');
  per.setAge(18);

  per.display();
}
