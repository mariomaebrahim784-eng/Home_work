class Product {
  String? name;
  double? price;

  Product(String name, double? price) {
    this.name = name;
    this.price = price ?? 0;
  }

  void display() {
    print('Product: $name, Price: $price');
  }
}

void main() {
  Product p1 = Product('Laptop', 15000);
  Product p2 = Product('Mouse', null);

  p1.display();
  p2.display();
}

