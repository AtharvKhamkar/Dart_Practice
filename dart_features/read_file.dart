import 'dart:io';

void main() {
  File file = File('dart_features/sample.txt');

  final content = file.readAsStringSync();
  print(content);
  print('Path of the file is ${file.path}');
  print('Absolute path of the file is ${file.absolute.path}');
  print('Size of the file is ${file.lengthSync()}');
  print('Last modified date is ${file.lastModifiedSync()}');

  //Writing into the file

  // print('Content of the file before writing into the file ${content}');
  // file.writeAsStringSync('I am writing on the file', mode: FileMode.append);
  // final newContent = file.readAsStringSync();
  // print('New content of the file is ${newContent}');

  //Deleting a file
  if (file.existsSync()) {
    file.deleteSync();
    print('File deleted successfully');
  } else {
    print('Unable to delete file');
  }
}
