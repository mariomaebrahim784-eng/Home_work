import 'dart:io';

void main() {
  print("Enter numbers separated by space:");
  List<int> numbers = stdin
      .readLineSync()!
      .split(' ')
      .map((e) => int.parse(e))
      .toList();

  int max = numbers[0];
  int min = numbers[0];

  for (int num in numbers) {
    if (num > max) max = num;
    if (num < min) min = num;
  }

  print("Largest: $max");
  print("Smallest: $min");
  print("Difference: ${max - min}");

 

  int sum = 0;
  for (int num in numbers) {
    sum += num;
  }

  double average = sum / numbers.length;
  print("Average: $average");

 
  print("Numbers above average:");
  for (int num in numbers) {
    if (num > average) {
      print(num);
    }
  }

  int even = 0;
  int odd = 0;

  for (int num in numbers) {
    if (num % 2 == 0) {
      even++;
    } else {
      odd++;
    }
  }

  print("Even count: $even");
  print("Odd count: $odd");
}
