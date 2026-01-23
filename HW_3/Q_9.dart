void main() {
 
  List<int> numbers = [1, 2, 3, 3, 4, 5, 5];

  int originalLength = numbers.length;

  Set<int> uniqueSet = numbers.toSet();

  int uniqueLength = uniqueSet.length;

  if (uniqueLength < originalLength) {
    print("Duplicates were removed.");
  } else {
    print("No duplicates found.");
  }
  print("Unique items: $uniqueSet");
}
