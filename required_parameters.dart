void main() {
  Student student = new Student(
      name: "Aditya",
      age: 22,
      isAttended: true,
      email: 'Khamkaratharv2002@gmail.com');
  print(student.name);
  print(student.age);
  print(student.isAttended);
  print(student.email);
}

class Student {
  String? name;
  int? age;
  bool? isAttended;
  String? email;

  Student(
      {this.name = "Atharv", this.age, this.isAttended, required this.email});
}
