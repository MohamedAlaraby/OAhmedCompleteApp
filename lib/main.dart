import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/helpers/bloc_observer.dart';
import 'package:flutter_complete_project/core/routing/app_router.dart';
import 'package:flutter_complete_project/doc_app.dart';

void main() {
  setupGetIt();
  Bloc.observer = MyBlocObserver();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
