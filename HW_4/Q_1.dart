import 'dart:ffi';

void main() {
  List<int> num = [5, 3, 5, 7, 3, 9];
  Set<int> uniqnum = num.toSet();
  print(uniqnum.length);
}
