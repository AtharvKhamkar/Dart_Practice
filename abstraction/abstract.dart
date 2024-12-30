abstract class Vehicle {
  void start();
  void stop();

  void displayInfo() {
    print('This is information of the abstract class');
  }
}

class Car extends Vehicle {
  void start() {
    print('${runtimeType} is Started');
  }

  void stop() {
    print('${runtimeType} is stopped');
  }
}

void main() {
  Car car = new Car();
  car.start();
  car.stop();
  car.displayInfo();
}
