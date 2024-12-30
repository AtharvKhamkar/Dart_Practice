class Data<T> {
  T data;

  Data(this.data);
}

T showValue<T extends Object>(T val) {
  return val;
}

void main() {
  Data intData = Data(20);
  Data stringData = Data('Atharv');
  print(intData.data);
  print(stringData.data);
  print(showValue(false));
}
