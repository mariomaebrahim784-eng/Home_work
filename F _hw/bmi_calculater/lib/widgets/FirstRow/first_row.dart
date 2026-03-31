
import 'package:bmi_calculater/widgets/FirstRow/gender_container.dart';
import 'package:flutter/material.dart';


class FirstRow extends StatelessWidget {
  const FirstRow({
    super.key,
    required this.isMale,
    required this.onGenderChanged,
  });

  final bool isMale;
  final Function(bool) onGenderChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GenderContainer(
            title: 'male',
            iconData: Icons.male,
            isMale: isMale,
            onTap: () {
              onGenderChanged(true);
            },
          ),
        ),
        Expanded(
          child: GenderContainer(
            title: 'female',
            iconData: Icons.female,
            isMale: !isMale,
            onTap: () {
              onGenderChanged(false);
            },
          ),
        ),
      ],
    );
  }
}
