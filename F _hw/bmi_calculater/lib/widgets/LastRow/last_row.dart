import 'package:bmi_calculater/widgets/LastRow/age_weight_container.dart';
import 'package:flutter/material.dart';


class LastRow extends StatelessWidget {
  const LastRow({
    super.key,
    required this.weight,
    required this.age,
    required this.onWeightAdd,
    required this.onWeightRemove,
    required this.onAgeAdd,
    required this.onAgeRemove,
  });

  final int weight;
  final int age;

  final VoidCallback onWeightAdd;
  final VoidCallback onWeightRemove;

  final VoidCallback onAgeAdd;
  final VoidCallback onAgeRemove;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AgeWeightContainer(
            title: 'Weight',
            value: weight,
            onAdd: onWeightAdd,
            onRemove: onWeightRemove,
          ),
        ),

        Expanded(
          child: AgeWeightContainer(
            title: 'Age',
            value: age,
            onAdd: onAgeAdd,
            onRemove: onAgeRemove,
          ),
        ),
      ],
    );
  }
}
