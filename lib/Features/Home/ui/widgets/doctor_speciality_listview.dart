import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing_helper.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialityListview extends StatelessWidget {
  const DoctorSpecialityListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 0 : 24),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorsManager.ligntBlue,
                  child: SvgPicture.asset(
                    "assets/svgs/docdoc_logo.svg",
                    width: 40,
                    height: 40,
                  ),
                ),
                verticalSpace(16),
                Text(
                  "Specialization",
                  style: TextStyles.font14DarkBlueReguler,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
