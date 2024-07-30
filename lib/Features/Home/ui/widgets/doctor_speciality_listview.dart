import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Features/home/data/models/specializations_response_model.dart';
import 'package:flutter_complete_project/Features/home/ui/widgets/doctor_speciality_list_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListview extends StatelessWidget {
  final List<SpecializationsData?>? specializationsDataList;
  const DoctorSpecialityListview({
    required this.specializationsDataList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationsDataList!.length,
        itemBuilder: (context, index) {
          return DoctorSpecialityListItem(
            index: index,
            specializationsData: specializationsDataList![index]!,
          );
        },
      ),
    );
  }
}
