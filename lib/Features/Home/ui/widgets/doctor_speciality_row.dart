import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';

class DoctorSpecialityRow extends StatelessWidget {
  const DoctorSpecialityRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Doctor Speciality",
          style: TextStyles.font18BlackSemiBold,
        ),
        const Spacer(),
        TextButton(
            onPressed: () {},
            child: Text(
              "See All",
              style: TextStyles.font14BlueReguler,
            ))
      ],
    );
  }
}
