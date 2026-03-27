void main() {
  String apiUrl = '';

  if (apiUrl.isEmpty) {
    apiUrl = 'https://example.com';
  }

  print(apiUrl.toUpperCase());
}
