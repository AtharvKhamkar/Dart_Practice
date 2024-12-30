void main() {
  Set<String> names = {'Atharv', 'Aditya', 'Smit', 'Advait'};
  // print(names);
  // print('First element ${names.first}');
  // print('Last element ${names.last}');
  // print('Length of set ${names.length}');
  // print('Is empty set ${names.isEmpty}');
  // print('Is not empty set ${names.isNotEmpty}');

  //clear method is used to clear all the element in the set
  // names.clear();
  print('Set after clearing ${names}');

  //Element at method is used to find element at respective index
  print('Finding element at ${names.elementAt(2)}');

  Set<String> fruits1 = {'Mango', 'Banana', 'Apple'};
  Set<String> fruit2 = {'Orange', 'Pineapple', 'Banana'};

  //Differece method is used create new set that represet which are the element in first set are not available in the set2
  print(
      'Finding different element between to sets ${fruits1.difference(fruit2)}');

  //Intersection method is used to find common
  print('Common elements between to sets are ${fruits1.intersection(fruit2)}');
}
