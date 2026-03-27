class City {
  String name;
  int population;
  City(this.name, this.population);
}

void main() {
  City C1 = City('Cairo', 300000);
  City C2 = City('Giza', 500000);
  print("City: ${C1.name}, Population: ${C1.population}");
  print("City: ${C2.name}, Population: ${C2.population}");
}
