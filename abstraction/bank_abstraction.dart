abstract class Bank {
  String name;
  double rate;
  int price;
  int year;

  Bank(this.name, this.rate, this.price, this.year);

  num interest(double rate, int price, int year);

  void displayBankInfo() {
    print('Name of the bank is $name');
  }
}

class SBI extends Bank {
  SBI(String name, double rate, int price, int year)
      : super(name, rate, price, year);

  @override
  num interest(double rate, int price, int year) {
    return rate * price * year;
  }
}

class ICICI extends Bank {
  ICICI(String name, double rate, int price, int year)
      : super(name, rate, price, year);

  @override
  num interest(double rate, int price, int year) {
    return rate * price * year * 0.1;
  }
}

void main() {
  SBI sb = SBI('SBI', 9.5, 10000, 1);
  sb.displayBankInfo();
  print(
      'Price of the 1 year loan in SBI bank is ${sb.interest(sb.rate, sb.price, sb.year)}');

  print('--------------------------------------');

  ICICI ic = ICICI('ICICI', 10.5, 10000, 1);
  ic.displayBankInfo();
  print(
      'Price of the 1 year loan in ICICI bank is ${ic.interest(ic.rate, ic.price, ic.year)}');
}
