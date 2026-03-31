
import 'package:flutter/material.dart';
import 'package:ibm_project/screens/result_screen.dart';

class CalcBmiButton extends StatelessWidget {
  const CalcBmiButton({
    super.key,
    required this.weight,
    required this.height,
    required this.isMale,
  });

  final int weight;
  final double height;
  final bool isMale;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          shape: const RoundedRectangleBorder(),
        ),
        onPressed: () {
          double bmi = weight / ((height / 100) * (height / 100));
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultScreen(bmi: bmi, isMale: isMale),
            ),
          );
        },
        child: const Text(
          'CALCULATE',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
    );
  }
}
