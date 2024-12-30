void main() {
//   List<int> ages = [12, 18, 21];
//   print(ages.indexOf(12));
//   print(ages.indexOf(21));
//   print(ages.indexOf(100));
//   print(ages);

//   var names = ['Atharv', 10, true];
//   print(names);

//   var tempList = List<int>.filled(5, 0);
//   print(tempList);
//   tempList.add(12);
//   print(tempList);

//   List<String> names = ['Atharv', 'Aditya', 'Sanket'];
//   names[0] = 'Smit';
//   names[1] = 'Advait';

//   names.insert(2, 'Amulya');

//   print(names);

//   const List<String> names = ['Atharv', 'Aditya', 'Sanket'];
//   names[0] = 'Smit';
//   names[1] = 'Advait';
//   print(names);

  List<int> ages = [18, 20, 10, 8];
  print('List before replacement ${ages}');
  ages.replaceRange(0, 2, [50, 52, 54]);
  print('List after replacement ${ages}');

  List<int> voters = ages.where((ele) => ele % 2 == 0).toList();
  print('Eligible for vote are ${voters}');
}
