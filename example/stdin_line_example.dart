import 'package:stdin_line/stdin_line.dart';

main() {
  print('type `add 2 2` or `subtract 5 3`');

  handleNewLine((words) {
    var command = words[0];
    if (command == 'add') {
      int result = int.parse(words[1]) + int.parse(words[2]);
      print(result);
    }
    else if (command == 'subtract') {
      int result = int.parse(words[1]) - int.parse(words[2]);
      print(result);
    }
  });
}
