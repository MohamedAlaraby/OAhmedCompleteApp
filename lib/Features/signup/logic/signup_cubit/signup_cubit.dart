import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/Features/signup/data/models/signup_request_body.dart';
import 'package:flutter_complete_project/Features/signup/data/repos/signup_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

///The cubit is depending with the repo , and the repo depending on the api service.
class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(const SignupState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  var formkey = GlobalKey<FormState>();

  //********** */
  //********** */
  //********** */
  Future<void> emitSignupStates() async {
    emit(const SignupState.loading());
    var request = SignupRequestBody(
      name: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      password: passwordController.text,
      passwordConfirmation: passwordConfirmationController.text,
      gender: 0,
    );
    log("The signup request is $request");
    final response = await _signupRepo.signup(request);
    response.when(success: (signupResponse) {
      emit(SignupState.success(signupResponse));
    }, failure: (error) {
      emit(SignupState.error(error: error.apiErrorModel.message ?? " "));
    });
  }
}
