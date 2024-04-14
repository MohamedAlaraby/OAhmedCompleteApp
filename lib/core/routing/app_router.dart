import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Features/Onboarding/onboarding_screen.dart';
import 'package:flutter_complete_project/core/routing/routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (ctx) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (ctx) => const Placeholder());
      default:
        return MaterialPageRoute(
          builder: (ctx) => const Scaffold(
            body: Center(
              child: Text("No route found"),
            ),
          ),
        );
    }
  }
}
