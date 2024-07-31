import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Features/home/ui/widgets/doctor_speciality_row.dart';
import 'package:flutter_complete_project/Features/home/ui/widgets/doctors_bloc_builder.dart';
import 'package:flutter_complete_project/Features/home/ui/widgets/doctors_blue_containers.dart';
import 'package:flutter_complete_project/Features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter_complete_project/Features/home/ui/widgets/speciality_bloc_builder.dart';
import 'package:flutter_complete_project/core/helpers/spacing_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: Column(
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainers(),
              verticalSpace(16),
              const DoctorSpecialityRow(),
              const SpecialityBlocBulder(),
              verticalSpace(8),
              const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
