class Singleton {
  Singleton._internal();

  static final Singleton _instance = Singleton._internal();

  factory Singleton() {
    return _instance;
  }
}

void main() {
  Singleton sg = Singleton();
  Singleton sg2 = Singleton();
  print(sg.hashCode);
  print(sg2.hashCode);
}
