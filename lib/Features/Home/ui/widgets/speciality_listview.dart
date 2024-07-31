import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/Features/home/data/models/specializations_response_model.dart';
import 'package:flutter_complete_project/Features/home/logic/home_cubit.dart';
import 'package:flutter_complete_project/Features/home/ui/widgets/doctor_speciality_list_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListview extends StatefulWidget {
  final List<SpecializationsData?>? specializationsDataList;
  const SpecialityListview({
    required this.specializationsDataList,
    super.key,
  });

  @override
  State<SpecialityListview> createState() => _SpecialityListviewState();
}

class _SpecialityListviewState extends State<SpecialityListview> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationsDataList!.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });

              context.read<HomeCubit>().getDoctorsList(
                  specializationId:
                      widget.specializationsDataList![index]!.id!);
            },
            child: DoctorSpecialityListItem(
              index: index,
              specializationsData: widget.specializationsDataList![index]!,
              selectedIndex:selectedIndex,
            ),
          );
        },
      ),
    );
  }
}
