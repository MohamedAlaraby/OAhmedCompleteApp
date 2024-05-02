import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogoAndText extends StatelessWidget {
  const AppLogoAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/svgs/docdoc_logo.svg",
          height: 40,
          width: 40,
        ),
        SizedBox(width: 10.w),
        Text(
          "Docdoc",
          style: TextStyles.font24Black700Weight,
        ),
      ],
    );
  }
}
