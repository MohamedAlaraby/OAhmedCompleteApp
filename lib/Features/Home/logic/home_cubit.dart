import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/Features/home/data/models/specializations_response_model.dart';
import 'package:flutter_complete_project/Features/home/data/repos/home_repo.dart';
import 'package:flutter_complete_project/core/helpers/extensions.dart';
import 'package:flutter_complete_project/core/networking/api_error_handler.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?>? specializationsList = [];

  Future<void> getSpecializations() async {
        emit(const HomeState.specializationsLoading());
        final response = await _homeRepo.getSpecializations();

        response.when(success: (data) {
          specializationsList = data.specializationsDataList;
          //getting the first specializaion doctor an an inital list.
          getDoctorsList(specializationId: specializationsList!.first!.id!);
          emit(HomeState.specializationsSuccess(specializationsList));
        }, failure: (apiErrorModel) {
          emit(HomeState.specializationsError(apiErrorModel));
        });
  }

  ///returns list of doctors based on the specidied index
  List<Doctors?>? getDoctorsListBySpecializatonsId(
      {required int specializationId}) {
    return specializationsList
        ?.firstWhere((specialization) => specializationId == specialization?.id)
        ?.doctorsList;
  }

  void getDoctorsList({required int specializationId}) {
    List<Doctors?>? doctorsList =
        getDoctorsListBySpecializatonsId(specializationId: specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ApiErrorHandler.handle("No doctors found")));
    }
  }
}
