import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing_helper.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SpecialityShimmerLoading extends StatelessWidget {
  const SpecialityShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.h,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsetsDirectional.only(
                start: index == 0 ? 0 : 24.w,
              ),
              child: Column(
                children: [
                  Shimmer.fromColors(
                    baseColor: ColorsManager.lightGrey,
                    highlightColor: Colors.white,
                    child: const CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  verticalSpace(14),
                  Shimmer.fromColors(
                    baseColor: ColorsManager.lightGrey,
                    highlightColor: Colors.white,
                    child: Container(
                      height: 14.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        color: ColorsManager.lightGrey,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
