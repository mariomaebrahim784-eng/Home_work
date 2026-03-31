import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.bmi, required this.isMale});

  final double bmi;
  final bool isMale;

  String getResult() {
    if (bmi < 18.5) {
      return "UNDERWEIGHT";
    } else if (bmi < 25) {
      return "NORMAL";
    } else if (bmi < 30) {
      return "OVERWEIGHT";
    } else {
      return "OBESE";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff17172F),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("BMI RESULT", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff17172F),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Color(0xff03051A),

            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                isMale ? "MALE" : "FEMALE",
                style: const TextStyle(fontSize: 25, color: Colors.white70),
              ),

              const SizedBox(height: 20),

              const Text(
                "YOUR BMI",
                style: TextStyle(fontSize: 18, color: Colors.white54),
              ),

              const SizedBox(height: 10),

              Text(
                bmi.toStringAsFixed(1),
                style: const TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                getResult(),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
