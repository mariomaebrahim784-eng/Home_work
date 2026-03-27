void main() {
  int price = 180;
  bool isStudent = true;

  if (isStudent && price >= 150) {
    price = price - 15;
  }

  print(price);
}

