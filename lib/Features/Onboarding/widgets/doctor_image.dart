import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/helper_methods.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Image.asset(
            "assets/images/doctor_image.png",
            height: getSize(context).height * 0.7.h,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Manage and schedule all of your medical appointments easily"
            "with Docdoc to get a new experience.",
            style: TextStyles.font14greyReguler,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 30.h),
      ],
    );
  }
}
