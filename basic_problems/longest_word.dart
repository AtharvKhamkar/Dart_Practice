//Have the function LongestWord(sen) take the sen parameter being passed and return the longest word in the string. If there are two or more words that are the same length, return the first word from the string with that length. Ignore punctuation and assume sen will not be empty. Words may also contain numbers, for example "Hello world123 567"

//IMP--------->
// [^anyPattern] means It should not match pattern
// \s meaning space
//g This ensures the pattern is applied to all matches in the string, not just the first one
void main() {
  print(longestWord('fun&!! time'));
}

String longestWord(String sen) {
  String cleanSen = sen.replaceAll(RegExp(r'[^A-Za-z0-9\s]'), '');
  List<String> words = cleanSen.split(' ');

  String longest = words[0];

  for (int i = 0; i < words.length; i++) {
    if (words[i].length > longest.length) {
      longest = words[i];
    }
  }

  return longest;
}
