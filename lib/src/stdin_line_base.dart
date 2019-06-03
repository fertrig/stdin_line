import 'dart:convert';
import 'dart:io';

/// Subscribes the handler to receive new lines.
void handleNewLine(void Function(List<String> words) handler) {
  Stream cmdLine = stdin
      .transform(Utf8Decoder())
      .transform(LineSplitter());

  cmdLine.listen((line) async {
    if (line is String) {
      if (line.isNotEmpty) {
        var words = line.split(' ');
        if (words.isNotEmpty) {
          handler(words);
        }
      }
    }
  });
}
