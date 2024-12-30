void main() {
  Map<String, String> capitalInfo = {
    'USA': 'Washington D C',
    'India': 'Delhi',
    'China': 'Tokyo'
  };

  print(capitalInfo);

  print('Keys in the map are ${capitalInfo.keys.toList()}');
  print('Values in the map are ${capitalInfo.values.toList()}');
  print('Length of the map is ${capitalInfo.length}');
  print('To chek map is empty or not ${capitalInfo.isEmpty}');

  capitalInfo['Australia'] = 'Sydney';
  print('Map after adding entry ${capitalInfo}');

  //contains is used to check key or value is present in the list or not
  print(
      'Checking India capital is present in the map ${capitalInfo.containsValue('Delhi')}');
  print(
      'Checking Japan Capital is present in the map ${capitalInfo.containsKey('jflkdf')}');

  // capitalInfo.clear();
  // print('Map after clearning ${capitalInfo}');

  capitalInfo.removeWhere((keys, values) => keys == 'India');
  print('Map after removing india ${capitalInfo}');
}
