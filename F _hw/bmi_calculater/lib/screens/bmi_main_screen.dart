// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bmi_calculater/widgets/FirstRow/first_row.dart';
import 'package:bmi_calculater/widgets/LastRow/last_row.dart';
import 'package:bmi_calculater/widgets/calcButton/calc_bmi_button.dart';
import 'package:bmi_calculater/widgets/heightContainer/height_container.dart';
import 'package:flutter/material.dart';





class BmiMainScreen extends StatefulWidget {
  const BmiMainScreen({super.key});

  @override
  State<BmiMainScreen> createState() => _BmiMainScreenState();
}

class _BmiMainScreenState extends State<BmiMainScreen> {
  bool isMale = true;
  double height = 170;
  int age = 29;
  int weight = 60;

  void changeGender(bool value) {
    setState(() {
      isMale = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03051A),
      appBar: AppBar(
        backgroundColor: Color(0xff03051A),
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          /// Gender Part "MALE" "FEMALE"
          FirstRow(isMale: isMale, onGenderChanged: changeGender),

          ///  HEIGHT SLIDER
          HeightContainer(
            height: height,
            onChanged: (value) {
              setState(() {
                height = value;
              });
            },
          ),

          /// PERSON DATA "AGE" "WEIGHT"
          LastRow(
            weight: weight,
            age: age,

            onWeightAdd: () {
              setState(() {
                weight++;
              });
            },

            onWeightRemove: () {
              setState(() {
                weight--;
              });
            },

            onAgeAdd: () {
              setState(() {
                age++;
              });
            },

            onAgeRemove: () {
              setState(() {
                age--;
              });
            },
          ),
        ],
      ),
      bottomNavigationBar: CalcBmiButton(
        weight: weight,
        height: height,
        isMale: isMale,
      ),
    );
  }
}
