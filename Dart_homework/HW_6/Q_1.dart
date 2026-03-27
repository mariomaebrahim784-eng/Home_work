class Calculate {
  int? num1;
  int ? num2;
  Calculate(int num1, int num2) {
    this.num1 = num1;
    this.num2 = num2;
  }

  void addNumbers() {
    print(num1! +  num2!);
  }
}

void main() {
  Calculate c = Calculate(5,3);
  c.addNumbers();
}
