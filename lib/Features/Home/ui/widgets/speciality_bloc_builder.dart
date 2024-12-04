import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/Features/home/data/models/specializations_response_model.dart';
import 'package:flutter_complete_project/Features/home/logic/home_cubit.dart';
import 'package:flutter_complete_project/Features/home/logic/home_state.dart';
import 'package:flutter_complete_project/Features/home/ui/widgets/doctors_shimmer_loading.dart';
import 'package:flutter_complete_project/Features/home/ui/widgets/speciality_listview.dart';
import 'package:flutter_complete_project/Features/home/ui/widgets/speciality_shimmer_loading.dart';
import 'package:flutter_complete_project/core/helpers/spacing_helper.dart';
import 'package:flutter_complete_project/core/networking/api_error_handler.dart';
import 'package:flutter_complete_project/core/networking/api_error_model.dart';

class SpecialityBlocBulder extends StatelessWidget {
  const SpecialityBlocBulder({
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
              (List<SpecializationsData?>? specializations) {
            List<SpecializationsData?>? specializationsDataList =
                specializations;
            return setupSuccess(specializationsDataList);
          },
          specializationsError: (ApiErrorModel errorHandler) => setupError(),
          orElse: () => setupError(),
        );
      },
    );
  }

  SizedBox setupError() => const SizedBox.shrink();
  Widget setupSuccess(List<SpecializationsData?>? specializationsDataList) {
    return SpecialityListview(specializationsDataList: specializationsDataList);
  }

  Widget setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          verticalSpace(16),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }
}
