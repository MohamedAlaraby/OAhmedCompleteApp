import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintTextStyle;
  final String hintText;
  final bool? isObscuredText;
  final Widget? suffixIcon;
  final Color? backgroundgColor;

  const MyTextFormField({
    super.key,
    required this.hintText,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintTextStyle,
    this.isObscuredText,
    this.suffixIcon,
    this.backgroundgColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true, //to control the padding.
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.mainBlue,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: const BorderSide(
                color: ColorsManager.lighterGrey,
                width: 1.3,
              ),
            ),
        hintStyle: hintTextStyle ?? TextStyles.font14lightGreyNormal,
        hintText: hintText,
        fillColor: backgroundgColor ?? ColorsManager.offWhite,
        filled: true,
        suffixIcon: suffixIcon,
      ),
      style: TextStyles.font14DarkBlueMeduim,
      obscureText: isObscuredText ?? false, //email not pass if false.
    );
  }
}
