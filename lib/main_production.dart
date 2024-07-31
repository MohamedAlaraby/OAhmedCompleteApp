import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/helpers/bloc_observer.dart';
import 'package:flutter_complete_project/core/helpers/constants.dart';
import 'package:flutter_complete_project/core/helpers/shared_prefs_helper.dart';
import 'package:flutter_complete_project/core/routing/app_router.dart';
import 'package:flutter_complete_project/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//saadmo@gmail.com -- Mo@12345
// Use this token to login on a CI server:
//1// 03ORwdNQmnP1vCgYIARAAGAMSNwF-L9IrLBMM2OvM4jzokuGNf_jGa-skTBQRXjo05DeXaTfZ7MWaJVqnTOfQuQ8qh6MHQGkUVPY
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  Bloc.observer = MyBlocObserver();
  //To fix the hidden text bug in screen util package.
  await ScreenUtil.ensureScreenSize();
await  checkIfLoggedIn();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}


