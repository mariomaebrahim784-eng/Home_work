void main() {
  
  Map<String, String> countryCodes = {
    'EG': 'Egypt',
    'SA': 'Saudi Arabia',
    'AE': 'United Arab Emirates',
  };
 
  print(countryCodes['EG']);

  countryCodes['QA'] = 'Qatar';

  print(countryCodes.length);

  countryCodes['JO'] ?? print('Jordan missing');
  /*or
    if (!countryCodes.containsKey('JO')) {
    print('Jordan missing');
  }
  */
   
}
