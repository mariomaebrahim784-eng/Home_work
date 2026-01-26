void main() {
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];

  Set<String> duplicates = {};

  for (String name in names) {
    if (names.indexOf(name) != names.lastIndexOf(name)) {
      duplicates.add(name);
    }
  }

  print(duplicates);
}
