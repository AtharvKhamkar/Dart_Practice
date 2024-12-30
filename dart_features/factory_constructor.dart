void main() {
  Map<String, int> dimensions = {'length': 10, 'breadth': 300};
  Area ar = Area.fromMap(dimensions);
  print('Area is ${ar.result}');
}

class Area {
  final int length;
  final int breadth;
  final int result;

  Area(this.length, this.breadth) : result = length * breadth;

  factory Area.fromMap(Map<String, int> map) {
    final length = map['length'] as int;
    final breadth = map['breadth'] as int;
    return Area(length, breadth);
  }
}
