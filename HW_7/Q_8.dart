import 'dart:io';

void main() {
  String sentence = stdin.readLineSync()!.toLowerCase();
  List<String> words = sentence.split(' ');
  Map<String, int> wordCount = {};

  for (String word in words) {
    wordCount[word] = (wordCount[word] ?? 0) + 1;
  }

  int uniqueCount = 0;

  for (var entry in wordCount.entries) {
    if (entry.value == 1) {
      print(entry.key);
      uniqueCount++;
    }
  }

  print(uniqueCount);
}

