void main() {
  int a = 10;
  int b = 20;
  int c = 5;

 
  bool expr1 = a > b;          
  bool expr2 = b >= c;          
  bool expr3 = (a + c) < b && b > 15; 

  
  print('a > b: $expr1');
  print('b >= c: $expr2');
  print('(a + c) < b && b > 15: $expr3');


  if (expr3) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }
}
