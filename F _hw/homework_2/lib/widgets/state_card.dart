import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Row(
      children: [
    Expanded(
          child: StatCarditem(
            color: Color(0xff5F38AA),
            icon: Icons.people,
            value: "1,234",
            label: "Users",
          ),
        ),
        SizedBox(width: 10),

        Expanded(
          child: StatCarditem(
            color: Color(0xffF99600),
            icon: Icons.star,
            value: "4.8",
            label: "Rating",
          ),
        ),
        SizedBox(width: 10),

        Expanded(
          child: StatCarditem(
            color: Color(0xff5193B0),
            icon: Icons.show_chart,
            value: "98%",
            label: "Success",
          ),
        ),
      ],
    );
  }
}

class StatCarditem extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final Color color;
  const StatCarditem({
    super.key,
    required this.color,
    required this.icon,
    required this.value,
    required this.label,
  });

  @override
Widget build(BuildContext context) {
  return Card(
    color: Colors.white,
    elevation: 3,
    shape: RoundedRectangleBorder(
      
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 28),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 9,
            ),
          ),
        ],
      ),
    ),
  );
  }
}