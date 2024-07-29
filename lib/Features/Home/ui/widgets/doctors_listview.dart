import 'package:flutter/widgets.dart';
import 'package:flutter_complete_project/core/helpers/spacing_helper.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListview extends StatelessWidget {
  const DoctorsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
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
                        "Dr. Mohamed elaraby",
                        style: TextStyles.font16BlackBold,
                      ),
                      verticalSpace(12),
                      Text(
                        "Speciality || Soecific",
                        style: TextStyles.font14greyReguler,
                      ),
                      verticalSpace(12),
                      Text(
                        "Email@email.com ",
                        style: TextStyles.font14greyReguler,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
