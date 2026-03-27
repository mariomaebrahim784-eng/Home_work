void main() {
  String text = 'EGP 12.50';

  double value = double.parse(text.split(' ')[1]);

  print(value);
}
