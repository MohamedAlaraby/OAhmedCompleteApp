import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Features/home/data/models/specializations_response_model.dart';
import 'package:flutter_complete_project/core/helpers/spacing_helper.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialityListItem extends StatelessWidget {
  final int index;
  final SpecializationsData specializationsData;
  const DoctorSpecialityListItem({
    required this.index,
    required this.specializationsData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: index == 0 ? 0 : 24),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: ColorsManager.ligntBlue,
            child: SvgPicture.asset(
              "assets/svgs/docdoc_logo.svg",
              width: 40,
              height: 40,
            ),
          ),
          verticalSpace(16),
          Text(
            specializationsData.name ?? "No name exists",
            style: TextStyles.font14DarkBlueReguler,
          ),
        ],
      ),
    );
  }
}
