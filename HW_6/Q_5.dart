import 'dart:io';

void main() {
  List<int> numbers = [];

  for (int i = 0; i < 6; i++) {
    numbers.add(int.parse(stdin.readLineSync()!));
  }

  int largest = numbers[0];
  int secondLargest = numbers[0];

  for (int num in numbers) {
    if (num > largest) {
      secondLargest = largest;
      largest = num;
    } else if (num > secondLargest && num != largest) {
      secondLargest = num;
    }
  }

  print('Largest: $largest');
  print('Second Largest: $secondLargest');
}

