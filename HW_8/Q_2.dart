class Car {
  String _brand = "";
  int _year = 0;

 
  set brand(String value) {
    if (value.isNotEmpty) {
      _brand = value;
    } else {
      print("Invalid brand");
    }
  }

 
  set year(int value) {
    if (value >= 1886) {
      _year = value;
    } else {
      print("Invalid year");
    }
  }

  
  String get brand => _brand;
  int get year => _year;
}

void main() {
  Car car1 = Car();
  car1.brand = "Toyota";
  car1.year = 2022;

  print("${car1.brand} - ${car1.year}");

  Car car2 = Car();
  car2.brand = "";      
  car2.year = 1500;     
}