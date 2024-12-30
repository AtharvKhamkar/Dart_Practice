mixin canFly {
  void fly() {
    print('Flying....');
  }
}

mixin canWalk {
  void walk() {
    print('Walking...');
  }
}

class Human with canFly, canWalk {}

void main() {
  Human hum = Human();
  hum.fly();
}
