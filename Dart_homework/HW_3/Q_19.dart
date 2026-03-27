void main() {
 
  List<String> names = ['Ali', 'Mona', 'Ali', 'Sara', 'Mona', 'Omar'];


  Set<String> uniqueNames = names.toSet();

 
  Map<String, int> nameCounts = {};

  for (var name in names) {
    if (nameCounts.containsKey(name)) {
      nameCounts[name] = nameCounts[name]! + 1;
    } else {
      nameCounts[name] = 1;
    }
  }

  
  if (uniqueNames.length < names.length) {
    print('There were duplicates in the list.');
  } else {
    print('No duplicates found.');
  }

  
  print('Name counts: $nameCounts');

 
  String specificName = 'Ali';
  if (nameCounts[specificName]! > 1) {
    print('$specificName appears more than once');
  }
}
