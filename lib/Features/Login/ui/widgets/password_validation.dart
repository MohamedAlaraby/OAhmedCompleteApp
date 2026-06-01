import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing_helper.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidation({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacter,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(
          "At least 1 lowercase letter",
          hasLowerCase,
        ),
        verticalSpace(2),
        buildValidationRow(
          "At least 1 uppercase letter",
          hasUpperCase,
        ),
        verticalSpace(2),
        buildValidationRow(
          "At least 1 special charater",
          hasSpecialCharacter,
        ),
        verticalSpace(2),
        buildValidationRow(
          "At least 1 number",
          hasNumber,
        ),
        verticalSpace(2),
        buildValidationRow(
          "At least 8 character length",
          hasMinLength,
        ),
        verticalSpace(2),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.greyColor,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font14DarkBlueReguler.copyWith(
            decoration:
                hasValidated ? TextDecoration.lineThrough : TextDecoration.none,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color:
                hasValidated ? ColorsManager.greyColor : ColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
