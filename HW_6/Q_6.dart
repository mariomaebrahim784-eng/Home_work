import 'dart:io';

void main() {
  String sentence = stdin.readLineSync()!;
  List<String> words = sentence.split(' ');

  String shortest = words[0];
  String longest = words[0];

  for (String word in words) {
    if (word.length < shortest.length) {
      shortest = word;
    }
    if (word.length > longest.length) {
      longest = word;
    }
  }

  print('Words count: ${words.length}');
  print('Shortest word: $shortest');
  print('Longest word: $longest');
}
 
