import 'package:dio/dio.dart';
import 'package:flutter_complete_project/Features/login/data/repos/login_repo.dart';
import 'package:flutter_complete_project/Features/login/logic/login_cubit/login_cubit.dart';
import 'package:flutter_complete_project/Features/signup/data/repos/signup_repo.dart';
import 'package:flutter_complete_project/Features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:flutter_complete_project/core/networking/api_service.dart';
import 'package:flutter_complete_project/core/networking/dio_factory.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupGetIt() {
  //Dio &api service.
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //*login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<ApiService>()));
  ///We make the cubt facrory not lazy signleton ,
  ///because the singlon will cause problems with the cubit .
  ///but now each time i will call the cubit it will generate new instance.
  ///and no problems will happen.
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));
  //*Sign up
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt<ApiService>()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt<SignupRepo>()));
}
