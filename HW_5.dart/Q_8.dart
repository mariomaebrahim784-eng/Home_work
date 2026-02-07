import 'dart:io';

void main() {
  print('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);

  int sum = 0;
  int largest = 0;
  int temp = number; 

  while (temp > 0) {
    int digit = temp % 10; 
    sum += digit;

    if (digit > largest) {
      largest = digit;
    }

    temp = temp ~/ 10; 
  }

  print('Sum of digits: $sum');
  print('Largest digit: $largest');
}
