
class Person {
  String? name;
  int? age;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  void display() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  Person p = Person('Marioma', 20);
  p.age = 21;
  p.display();
}
