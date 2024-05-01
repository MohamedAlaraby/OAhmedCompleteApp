import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Features/Onboarding/widgets/app_logo_and_text.dart';
import 'package:flutter_complete_project/Features/Onboarding/widgets/doctor_image.dart';
import 'package:flutter_complete_project/Features/Onboarding/widgets/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
                  SizedBox(height: 20.h),
                  const AppLogoAndText(),
                  SizedBox(height: 16.h),
                  const DoctorImageAndText(),
                  const GetStartedButton(),
            ],
          ),
        ),
      ),
    );
  }
}
