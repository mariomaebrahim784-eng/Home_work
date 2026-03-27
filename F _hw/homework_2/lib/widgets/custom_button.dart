import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color color;

  const CustomButton({
    super.key,
    required this.title,
    this.color = Colors.purple,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
         boxShadow: [
          BoxShadow(color: Color(0xff88160B9), blurRadius: 1, 
         )
         
    ],
  ),

      
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}