int countUniqueVisitors(List<int> visitorIds) {
  
  Set<int> uniqueVisitors = visitorIds.toSet();

  
  return uniqueVisitors.length;
}

void main() {
  List<int> visitorIds = [1, 2, 3, 2, 1, 4, 5, 3, 5];

  int uniqueCount = countUniqueVisitors(visitorIds);

  print("Number of unique visitors today: $uniqueCount");
}