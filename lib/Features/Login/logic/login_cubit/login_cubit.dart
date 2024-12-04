import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/Features/login/data/models/login_request_body.dart';
import 'package:flutter_complete_project/Features/login/data/repos/login_repo.dart';
import 'package:flutter_complete_project/core/helpers/constants.dart';
import 'package:flutter_complete_project/core/helpers/shared_prefs_helper.dart';
import 'package:flutter_complete_project/core/networking/api_error_model.dart';
import 'package:flutter_complete_project/core/networking/dio_factory.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  TextEditingController emailController =
      TextEditingController(text: "saadmo@gmail.com");
  TextEditingController passwordController =
      TextEditingController(text: "Mo@12345");
  var formkey = GlobalKey<FormState>();
  //********* */
  //********* */
  //********* */
  //********* */
  Future<void> emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(success: (loginResponse) async {
      await saveUserToken(loginResponse.userData?.token ?? "");
      emit(LoginState.success(response));
    }, failure: (error) {
      emit(LoginState.error(error));
    });
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefsHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenAfterLogin(token);
  }
}
