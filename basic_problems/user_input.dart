void main() {
  // For string
  // print('Enter your name :');
  // String? name = stdin.readLineSync();
  // print('Your name is $name');

  //For Int
  // print('Enter your score:');
  // int? score = int.parse(stdin.readLineSync()!);
  // print('Your score is $score');

  //For Double
  // print('Enter your score');
  // double? score = double.parse(stdin.readLineSync()!);
  // print('Your score is $score');

  //Converting List into Map using .asMap()
  List<String> footballPlayers = [
    'Messi',
    'Naymar',
    'Ronaldo',
    'Haland',
    'Mbappe'
  ];

  footballPlayers
      .asMap()
      .forEach((index, value) => print('Index is $index and value is $value'));
}
