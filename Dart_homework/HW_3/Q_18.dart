void main() {
  Map<String, String?> env = {
    'ENV': 'prod',
    'API_KEY': null,
    'DB_NAME': null,
  };

  
  String envValue = (env['ENV'] ?? 'dev').toUpperCase();
  String apiKey = (env['API_KEY'] ?? 'DEFAULT_KEY').toUpperCase();
  String dbName = (env['DB_NAME'] ?? 'DEFAULT_DB').toUpperCase();

 
  print('ENV: $envValue');
  print('API_KEY: $apiKey');
  print('DB_NAME: $dbName');

  
  if (envValue == 'PROD') {
    print('Prod ready');
  } else {
    print('Non-prod');
  }
}
