import 'package:dio/dio.dart';
import 'package:flutter_complete_project/Features/home/data/apis/home_api_service.dart';
import 'package:flutter_complete_project/Features/home/data/repos/home_repo.dart';
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
  Dio dio = DioFactory.getDio();//singleton design pattern.
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //*login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<ApiService>()));

  ///We make the cuibt factory not lazy signleton ,
  ///because the singlon will cause problems with the cubit (the state will not change only the first state will be exists).
  ///but now each time i will call the cubit it will generate new instance.
  ///and no problems will happen.
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));
  //*Sign up
  getIt
      .registerLazySingleton<SignupRepo>(() => SignupRepo(getIt<ApiService>()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt<SignupRepo>()));

  //home
  getIt.registerLazySingleton<HomeApiService>(()=>HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(()=>HomeRepo(getIt()));//seach in get it and you will find it.


}
