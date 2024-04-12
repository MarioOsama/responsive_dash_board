import 'package:flutter/material.dart';
import 'package:full_course_project/features/dash_board_mobile_layout.dart';
import 'package:full_course_project/features/drawer/ui/custom_drawer.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: DashBoardMobileLayout(),
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
