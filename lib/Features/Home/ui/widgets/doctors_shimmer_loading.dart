import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing_helper.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorsShimmerLoading extends StatelessWidget {
  const DoctorsShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 16.h),
              child: Row(
                children: [
                  Shimmer.fromColors(
                    baseColor: ColorsManager.lightGrey,
                    highlightColor: Colors.white,
                    child: Container(
                      width: 110.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                  horizontalSpace(16),
                  Expanded(
                      child: Column(
                    children: [
                      Shimmer.fromColors(
                        baseColor: ColorsManager.lightGrey,
                        highlightColor: Colors.white,
                        child: Container(
                          width: 180.w,
                          height: 18.h,
                          decoration: BoxDecoration(
                            color: ColorsManager.lightGrey,
                            borderRadius: BorderRadius.circular(12),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                      ),
                      verticalSpace(12),
                      Shimmer.fromColors(
                        baseColor: ColorsManager.lightGrey,
                        highlightColor: Colors.white,
                        child: Container(
                          width: 160.w,
                          height: 14.h,
                          decoration: BoxDecoration(
                            color: ColorsManager.lightGrey,
                            borderRadius: BorderRadius.circular(12),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                      ),
                      verticalSpace(12),
                      Shimmer.fromColors(
                        baseColor: ColorsManager.lightGrey,
                        highlightColor: Colors.white,
                        child: Container(
                          width: 160.w,
                          height: 14.h,
                          decoration: BoxDecoration(
                            color: ColorsManager.lightGrey,
                            borderRadius: BorderRadius.circular(12),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            );
          }),
    );
  }
}
