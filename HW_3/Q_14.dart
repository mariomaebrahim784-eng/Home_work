// ignore_for_file: unnecessary_null_comparison

void main() {
  List<int>? scores = [10, 20, 30];

  if (scores == null || scores.isEmpty) {
    print('No scores');
  } else {
    int sum = scores.first + scores.last;

    print('Sum of first and last: $sum');

    if (sum >= 40) {
      print('Sum is greater than or equal to 40');
    } else {
      print('Sum is less than 40');
    }
  }
}
