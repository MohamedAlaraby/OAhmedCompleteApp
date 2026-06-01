import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/Features/home/home_screen.dart';
import 'package:flutter_complete_project/Features/login/ui/widgets/login_screen.dart';
import 'package:flutter_complete_project/Features/onboarding/onboarding_screen.dart';
import 'package:flutter_complete_project/Features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:flutter_complete_project/Features/signup/ui/signup_screen.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/routing/routes.dart';

import '../../Features/login/logic/login_cubit/login_cubit.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (c) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (c) => BlocProvider<LoginCubit>(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (c) => BlocProvider<SignupCubit>(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (c) => const HomeScreen(),
        );
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
