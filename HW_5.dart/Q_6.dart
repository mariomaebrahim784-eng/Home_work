import 'dart:io';
import 'dart:math';

void main() {
  
  Random random = Random();
  int secretNumber = random.nextInt(20) + 1; 

  int tries = 3;

  print('Guess the number between 1 and 20');

  for (int i = 1; i <= tries; i++) {
    print('Attempt $i: Enter your guess:');
    int guess = int.parse(stdin.readLineSync()!);

    if (guess == secretNumber) {
      print('Congratulations! You guessed it right.');
      return; 
    } else if (guess < secretNumber) {
      print('Too low!');
    } else {
      print('Too high!');
    }
  }

  // لو وصلنا هنا → المستخدم خسر
  print('Sorry! The correct number was $secretNumber');
}
