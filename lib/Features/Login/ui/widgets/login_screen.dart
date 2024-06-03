import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/Features/Login/data/models/login_request_body.dart';
import 'package:flutter_complete_project/Features/Login/logic/cubit/login_cubit.dart';
import 'package:flutter_complete_project/Features/Login/ui/widgets/accept_terms_conditions_text.dart';
import 'package:flutter_complete_project/Features/Login/ui/widgets/already_have_account_text.dart';
import 'package:flutter_complete_project/Features/Login/ui/widgets/email_and_password.dart';
import 'package:flutter_complete_project/Features/Login/ui/widgets/login_bloc_listener.dart';
import 'package:flutter_complete_project/core/helpers/spacing_helper.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_complete_project/core/widgets/my_text_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                style: TextStyles.font24BlueBold,
              ),
              verticalSpace(8),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: TextStyles.font14greyReguler,
              ),
              verticalSpace(36),
              Column(
                children: [
                  const EmailAndPassword(),
                  verticalSpace(24),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      "Forgot password",
                      style: TextStyles.font14BlueReguler,
                    ),
                  ),
                  verticalSpace(40),
                  MyTextButton(
                    onPressed: () async {
                      await validateThenLogin();
                    },
                    buttonText: 'Login',
                    textStyle: TextStyles.font16WhiteSemiBold,
                  ),
                  verticalSpace(40.h),
                  const AcceptTermsAndConditions(),
                  const AlreadyHaveAnAccount(),
                  const LoginBlocListener(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> validateThenLogin() async {
    if (context.read<LoginCubit>().formkey.currentState!.validate()) {
      var email = context.read<LoginCubit>().emailController.text;
      var password = context.read<LoginCubit>().passwordController.text;
      log("email is $email pass is $password");
      context.read<LoginCubit>().emitLoginStates(
            LoginRequestBody(
              email: email,
              password: password,
            ),
          );
    }
  }
}
