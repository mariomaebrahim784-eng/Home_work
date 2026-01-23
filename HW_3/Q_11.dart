
// ignore_for_file: dead_code

void main() {
  double price = 150.0;
  bool isStudent = true;
  bool hasCoupon = false;

  double finalPrice = price;

  if (isStudent) {
   
    if (hasCoupon) {
      finalPrice = price * 0.7; // خصم 30%
    } else {
      finalPrice = price * 0.85; // خصم 15%
    }
  } else {
  
    if (price > 100) {
      finalPrice = price * 0.9; // خصم 10%
    } else {
      finalPrice = price; 
    }
  }

  print("Final price: $finalPrice");
}
