import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';

class AcceptTermsAndConditions extends StatelessWidget {
  const AcceptTermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: <TextSpan>[
        TextSpan(
          text: 'By logging, you agree to our ',
          style: TextStyles.font14greyReguler,
        ),
        TextSpan(
          text: 'Terms & conditions',
          style: TextStyles.font14DarkBlueMeduim,
        ),
        TextSpan(
          text: ' and',
          style: TextStyles.font14DarkBlueMeduim.copyWith(
            height: 1.5,
          ),
        ),
        TextSpan(
          text: ' privacy policy',
          style: TextStyles.font14DarkBlueMeduim,
        ),
      ]),
    );
  }
}
