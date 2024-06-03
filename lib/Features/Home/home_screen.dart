import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Features/Onboarding/widgets/app_logo_and_text.dart';
import 'package:flutter_complete_project/Features/Onboarding/widgets/doctor_image.dart';
import 'package:flutter_complete_project/Features/Onboarding/widgets/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home screen"),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [Text("THIS IS HOME YA BASHA")],
          ),
        ),
      ),
    );
  }
}