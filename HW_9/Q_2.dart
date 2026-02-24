
class FoodItem {
  String name;
  double price;
  String category;

 
  FoodItem(this.name, this.price, this.category);
}


class Order {
  List<FoodItem> items = [];

  
  void addItem(FoodItem item) {
    items.add(item);
    print("${item.name} added to order.");
  }

  
  double calculateTotal() {
    double total = 0;

    for (var item in items) {
      total += item.price;
    }

    return total;
  }

  
  void showOrder() {
    if (items.isEmpty) {
      print("Order is empty.");
      return;
    }

    print("Your Order:");
    for (var item in items) {
      print("${item.name} - ${item.price} EGP (${item.category})");
    }

    print("--------------------");
    print("Total: ${calculateTotal()} EGP");
  }
}

void main() {
 
  FoodItem pizza = FoodItem("Pepperoni Pizza", 120, "Pizza");
  FoodItem burger = FoodItem("Beef Burger", 90, "Burger");
  FoodItem cola = FoodItem("Cola", 20, "Drinks");

  
  Order myOrder = Order();

  
  myOrder.addItem(pizza);
  myOrder.addItem(cola);
  myOrder.addItem(burger);

  print("");
  myOrder.showOrder();
}