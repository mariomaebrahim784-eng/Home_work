void main() {
  Map<String, String?> contact = {
    'phone': null,
  };

  String? phoneNumber = contact['phone'];

  if (phoneNumber == null) {
    print('No phone number available');
  }
   contact['phone'] = '0123456789';
 
   String updatedPhone = contact['phone']!;

  print('Phone length: ${updatedPhone.length}');
}
