class Course {
  String titel;
  int duration;
  Course(this.titel, [this.duration = 3]);
}

void main() {
  Course C1 = Course('Math', 2);
  Course C2 = Course('Fultter');
  print(" ${C1.titel},  ${C1.duration}");
  print(" ${C2.titel},  ${C2.duration}");
}
