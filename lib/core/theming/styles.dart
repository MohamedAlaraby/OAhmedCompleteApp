import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/theming/font_weight_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font14greyReguler = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.reguler,
    color: Colors.grey,
  );
  static TextStyle font14lightGreyNormal = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.reguler,
    color: ColorsManager.lightGrey,
  );
  static TextStyle font14DarkBlueReguler = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.meduim,
    color: ColorsManager.darkBlue,
  );
  static TextStyle font14BlueReguler = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.reguler,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
  static TextStyle font14BlueSemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font18DarkBlueBold = TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManager.darkBlue,
  ); 
}
