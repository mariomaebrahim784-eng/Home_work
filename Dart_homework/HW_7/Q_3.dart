class Movie {
  String titel;
  int rating;
  Movie(this.titel, this.rating);
}

void main() {
  List<Movie> movie = [
    Movie('Stranger Things', 10),
    Movie('Maze Runner', 20),
    Movie('Anaconda', 6),
    Movie('Roll', 7),
  ];
   for (var movie in movie) {
    if (movie.rating> 7) {
      print(movie.titel);
    }
  }
}
