import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/Features/home/data/models/specializations_response_model.dart';
import 'package:flutter_complete_project/Features/home/logic/home_cubit.dart';
import 'package:flutter_complete_project/Features/home/logic/home_state.dart';
import 'package:flutter_complete_project/Features/home/ui/widgets/doctor_speciality_listview.dart';
import 'package:flutter_complete_project/core/helpers/spacing_helper.dart';
import 'package:flutter_complete_project/core/networking/api_error_handler.dart';
import 'package:flutter_complete_project/Features/home/ui/widgets/doctors_listview.dart';

class SpecialitySectionBlocBulder extends StatelessWidget {
  const SpecialitySectionBlocBulder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return setupLoading();
          },
          specializationsSuccess:
              (SpecializationsResponseModel specializations) {
            List<SpecializationsData?>? specializationsDataList =
                specializations.specializationsDataList;
            return setupSuccess(specializationsDataList);
          },
          specializationsError: (ErrorHandler errorHandler) => setupError(),
          orElse: () => setupError(),
        );
      },
    );
  }

  SizedBox setupError() => const SizedBox.shrink();

  Expanded setupSuccess(List<SpecializationsData?>? specializationsDataList) {
    return Expanded(
      child: Column(
        children: [
          DoctorSpecialityListview(
              specializationsDataList: specializationsDataList),
          verticalSpace(16),
          DoctorsListview(doctors: specializationsDataList![0]!.doctorsList),
        ],
      ),
    );
  }

  SizedBox setupLoading() {
    return const SizedBox(
      height: 100,
      child: Center(child: CircularProgressIndicator()),
    );
  }
}
