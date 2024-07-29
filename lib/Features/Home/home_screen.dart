import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Features/home/ui/widgets/doctors_blue_containers.dart';
import 'package:flutter_complete_project/Features/home/ui/widgets/home_top_bar.dart';

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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            child: const Column(
              children: [
                HomeTopBar(),
                DoctorsBlueContainers(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
