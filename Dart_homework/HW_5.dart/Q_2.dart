import 'dart:io';

void main() {
   print('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);
    int count = 0;
  for(int i=0 ;i<number;i++){
    if(i %2 !=0){
      print(number);
        count++;   
       
    }
  }
   print('Total odd numbers = $count');
}
