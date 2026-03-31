import 'package:flutter/material.dart';

class HeightContainer extends StatelessWidget {
  const HeightContainer({
    super.key,
    required this.height,
    required this.onChanged,
  });

  final double height;
  final Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff17172F),
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'HEIGHT',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),

          const SizedBox(height: 10),

          Text(
            '${height.toInt()} cm',
            style: const TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          Slider(
            min: 100,
            max: 220,
            value: height,
            activeColor: Colors.white,
            thumbColor: Colors.red,
            inactiveColor: Colors.grey,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
