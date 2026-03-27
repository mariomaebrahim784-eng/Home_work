class Employee {
  String name;
  int salary;
  Employee(this.name, this.salary);
  void giveRaise(int amount) {
    salary += amount;
  }
}

void main() {
  Employee E1 = Employee('Yossef', 1000);
  E1.giveRaise(1000);
  print('Salary: ${E1.salary}');
}