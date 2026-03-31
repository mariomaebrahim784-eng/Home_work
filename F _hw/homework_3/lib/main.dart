import 'package:flutter/material.dart';
import 'package:ibm_project/screens/bmi_main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiMainScreen(),
    );
  }
}
