class Grade {
  int _score = 0;

  set score(int value) {
    if (value >= 0 && value <= 100) {
      _score = value;
    } else {
      print("Invalid score");
    }
  }

  
  int get score => _score;

 
  bool get isPass => _score >= 50;
}

void main() {
  Grade g = Grade();

  g.score = 80;
  print("Score: ${g.score}");
  print("Passed: ${g.isPass}");

  g.score = 30;
  print("Score: ${g.score}");
  print("Passed: ${g.isPass}");

  g.score = 150; 
}