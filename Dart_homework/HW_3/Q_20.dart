// ignore_for_file: dead_code

void main() {
  int age = 16;
  bool hasParent = true;
  String area = 'restricted';

  
  bool allowed = true;

  if (age < 18) {
    if (!hasParent) {
      allowed = false;
    }
  }

  switch (area) {
    case 'general':
      if (allowed) {
        print('Access granted to General area');
      } else {
        print('Access denied to General area');
      }
      break;

    case 'restricted':
      if (allowed) {
        print('Access granted to Restricted area');
      } else {
        print('Access denied to Restricted area');
      }
      break;

    default:
      print('Unknown area');
  }
}
