import 'package:flutter/widgets.dart';
import 'package:flutter_complete_project/Features/home/data/models/specializations_response_model.dart';
import 'package:flutter_complete_project/Features/home/ui/widgets/doctors_listview_item.dart';
class DoctorsListview extends StatelessWidget {
  final List<Doctors?>? doctors;
  const DoctorsListview({
    super.key,
    required this.doctors,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctors?.length,
        itemBuilder: (context, index) {
          return DoctorsListviewItem(doctor:doctors?[index]);
        },
      ),
    );
  }
}
