import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/Features/home/data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());
  Future<void> getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecializations();

    response.when(
        success: (data) {
          emit(HomeState.specializationsSuccess(data));
        },
        failure: (errorHandler){
          emit(HomeState.specializationsError(errorHandler));
        });
  }
}
