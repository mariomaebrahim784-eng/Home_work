class Car {
  String? brand;
  int ? year;

  Car(String brand, int year){
 this.brand=brand;
 this.year=year;
  }

  void display() {
    print('Brand: $brand, Year: $year');
  }
}

void main() {
  Car car1 = Car('Toyota', 2020);
  Car car2 = Car('BMW', 2023);

  car1.display();
  car2.display();
}

