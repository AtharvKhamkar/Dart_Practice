void main() {
  double score = 5.343454534;
  print('Type of score ${score} before conversion ${score.runtimeType}');
  String convertedScore = score.toStringAsFixed(2);
  print(
      'Type of score ${convertedScore} after conversion ${convertedScore.runtimeType}');
}
