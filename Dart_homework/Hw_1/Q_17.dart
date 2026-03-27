//If you need a variable that can hold any type of value and may change during
//execution, which data type would you use? Write a code example to show this.

/* dynamic allows the variable to change its data type at runtime*/

void main() {
  dynamic value = 30;
  print(value);

  value = "Wellcome Dart";
  print(value);

  value = false;
  print(value);
}
