import 'package:flutter/widgets.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              "Hi, Mohamed",
              style: TextStyles.font18DarkBlueBold
            ),
          ],
        ),
      ],
    );
  }
}
