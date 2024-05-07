import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Features/Login/ui/widgets/accept_terms_conditions_text.dart';
import 'package:flutter_complete_project/Features/Login/ui/widgets/already_have_account_text.dart';
import 'package:flutter_complete_project/core/helpers/spacing_helper.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_complete_project/core/widgets/my_text_button.dart';
import 'package:flutter_complete_project/core/widgets/my_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey formkey = GlobalKey<FormState>();
  bool isObsecuredText = true;
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
              Form(
                key: formkey,
                child: Column(
                  children: [
                    const MyTextFormField(
                      hintText: "Email",
                    ),
                    verticalSpace(10),
                    MyTextFormField(
                      isObscuredText: isObsecuredText,
                      hintText: "Password",
                      suffixIcon: IconButton(
                        onPressed: () {
                          isObsecuredText = !isObsecuredText;
                          setState(() {});
                        },
                        icon: Icon(
                          isObsecuredText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                    verticalSpace(20),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        "Forgot password",
                        style: TextStyles.font14BlueReguler,
                      ),
                    ),
                    verticalSpace(40),
                    MyTextButton(
                      onPressed: () {},
                      buttonText: 'Login',
                      textStyle: TextStyles.font16WhiteSemiBold,
                    ),
                    verticalSpace(40.h),
                    const AcceptTermsAndConditions(),
                    const AlreadyHaveAnAccount(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
