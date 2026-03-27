void main(){
  List<int> numbers = [4, 4, 5, 6, 6, 7];

// 7.b
Set<int> uniqueNumbers = numbers.toSet();
print(uniqueNumbers);

// 7.c
uniqueNumbers.add(8);
print(uniqueNumbers);

uniqueNumbers.remove(5);
print(uniqueNumbers);

print(uniqueNumbers.contains(6));
}