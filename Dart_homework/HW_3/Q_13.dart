void main() {
  int mark = 85;
  String grade;

  if (mark >= 90) {
    grade = 'A';
  } else if (mark >= 80) {
    grade = 'B';
  } else if (mark >= 70) {
    grade = 'C';
  } else {
    grade = 'D';
  }

  
  switch (grade) {
    case 'A':
      print('Excellent work!');
      break;
    case 'B':
      print('Very good!');
      break;
    case 'C':
      print('Good, but you can do better.');
      break;
    case 'D':
      print('You need more practice.');
      break;
    default:
      print('Invalid grade');
  }
}
