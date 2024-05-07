import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing_helper.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: Column(
            children: [
              Text(
                "Welcome Back",
                style: TextStyles.font24Black700Weight,
              ),
              verticalSpace(8),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: TextStyles.font14greyNormal,
              ),
              verticalSpace(36),
            ],
          ),
        ),
      ),
    );
  }
}
