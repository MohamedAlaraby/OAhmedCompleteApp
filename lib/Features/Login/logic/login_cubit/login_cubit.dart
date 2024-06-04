import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/Features/login/data/models/login_request_body.dart';
import 'package:flutter_complete_project/Features/login/data/repos/login_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
    response.when(success: (loginResponse) {
      emit(LoginState.success(response));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? " "));
    });
  }
}
