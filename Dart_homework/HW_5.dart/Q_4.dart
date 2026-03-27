import 'dart:io';

void main() {
  List<int> numbers = [];

 
  for (int i = 0; i < 5; i++) {
    print('Enter number ${i + 1}:');
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

 
  int largest = numbers[0];
  int smallest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }

    if (numbers[i] < smallest) {
      smallest = numbers[i];
    }
  }

  int difference = largest - smallest;

  print('Largest number: $largest');
  print('Smallest number: $smallest');
  print('Difference: $difference');
}
