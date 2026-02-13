class Book {
  String _title = "";
  int _pages = 0;

  
  set title(String value) {
    if (value.isNotEmpty) {
      _title = value;
    } else {
      print("Invalid title");
    }
  }

 
  set pages(int value) {
    if (value > 0) {
      _pages = value;
    } else {
      print("Invalid pages");
    }
  }

 
  String get title => _title;

  
  int get readingTime => _pages * 2;
}

void main() {
  Book book = Book();
  book.title = "Flutter Basics";
  book.pages = 200;

  print("Title: ${book.title}");
  print("Reading time: ${book.readingTime} minutes");
}