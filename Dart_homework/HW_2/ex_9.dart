// ignore_for_file: unused_local_variable

void main() {
  List<Map<String, dynamic>> students = [
    {'name': 'Youssef', 'grade': 85},
    {'name': 'mero', 'grade': 90},
  ];
  print(students[1]['grade']);
  int totalGrades = students[0]['grade'] + students[1]['grade'];
  double average = totalGrades / students.length;
  print(average);

}
