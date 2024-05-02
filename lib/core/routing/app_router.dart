import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Features/Login/ui/widgets/login_screen.dart';
import 'package:flutter_complete_project/Features/Onboarding/onboarding_screen.dart';
import 'package:flutter_complete_project/core/routing/routes.dart';

class AppRouter {

  
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (c) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (c) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (ctx) => getDefaultWidget(settings.name!),
        );
    }
  }

  Widget getDefaultWidget(String name) => Scaffold(
        body: Center(
          child: Text("No route defined for $name"),
        ),
      );
}
