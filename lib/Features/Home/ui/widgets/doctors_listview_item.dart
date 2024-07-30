import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_complete_project/Features/home/data/models/specializations_response_model.dart';
import 'package:flutter_complete_project/core/helpers/spacing_helper.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListviewItem extends StatelessWidget {
  final Doctors? doctor;
  const DoctorsListviewItem({super.key, this.doctor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                imageUrl:
                    "https://as1.ftcdn.net/v2/jpg/02/95/51/80/1000_F_295518052_aO5d9CqRhPnjlNDTRDjKLZHNftqfsxzI.jpg",
                width: 110.w,
                height: 100.h,
                fit: BoxFit.cover,
              ),
              ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              children: [
                Text(
                  doctor?.name ?? "",
                  style: TextStyles.font16BlackBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(12),
                Text(
                  "${doctor?.degree} | ${doctor?.phone}",
                  style: TextStyles.font14greyReguler,
                ),
                verticalSpace(12),
                Text(
                  doctor?.email ?? "",
                  style: TextStyles.font14greyReguler,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
