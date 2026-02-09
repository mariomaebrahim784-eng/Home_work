class NumberCheck {
  int value;
  NumberCheck(this.value);
  bool isEven() {
    if (value % 2 == 0) {
      return true;
    }
    return false;
  }
}

void main() {
  NumberCheck num1 = NumberCheck(4);
  print(num1.isEven());
}
