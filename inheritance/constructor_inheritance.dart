// class Laptop {
//   String processor;
//   String storage;
//   Laptop(this.processor, this.storage) {
//     print('Laptop contructor is called');
//   }
// }

// class Macbook extends Laptop {
//   String ram;
//   Macbook(String processor, String storage, this.ram)
//       : super(processor, storage) {
//     print('Macbook contrictor is called');
//   }
// }

// void main() {
//   Macbook mac = Macbook('16GB');
//   print(mac.ram);
// }

// class Laptop {
//   Laptop() {
//     print('Laptop contructor is called');
//   }
// }

// class Macbook extends Laptop {
//   String ram;
//   Macbook(this.ram) {
//     print('Macbook contrictor is called');
//   }
// }

// class Laptop {
//   // Constructor
//   Laptop(String name, String color) {
//     print("Laptop constructor");
//     print("Name: $name");
//     print("Color: $color");
//   }
// }

// class MacBook extends Laptop {
//   // Constructor
//   MacBook(String name, String color) : super(name, color) {
//     print("MacBook constructor");
//   }
// }

// void main() {
//   var macbook = MacBook("MacBook Pro", "Silver");
// }

//------------------------------------------------------------------

class Laptop {
  String ram;
  Laptop(this.ram) {
    print('Laptop constructor is called');
    print('Parent class ram is $ram');
  }
  void start() {
    print('Laptop is starting');
  }
}

class Macbook extends Laptop {
  String ram;
  Macbook(String parentRam, this.ram) : super(parentRam) {
    print('Macbook constructor is called');
    print('Child class ram is $ram');
  }

  void stop() {
    print('Ram of the macbook is $ram');
    start(); // Call the parent class method
    print('Macbook is stopping with macOS');
  }

  void showRamDetails() {
    print('Ram of the child class is $ram');
    print('Ram of the parent class is ${super.ram}');
  }
}

void main() {
  Macbook mac = Macbook('24GB', '16GB');
  mac.showRamDetails();
}
