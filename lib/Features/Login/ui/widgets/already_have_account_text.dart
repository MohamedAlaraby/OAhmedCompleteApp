import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: <TextSpan>[
        TextSpan(
          text: 'Already have an account?',
          style: TextStyles.font14DarkBlueMeduim,
        ),
        TextSpan(
          text: ' Sign Up',
          style: TextStyles.font14BlueSemiBold,
        ),
      ]),
    );
  }
}