import 'package:flutter/material.dart';
import 'package:full_course_project/features/over_view/ui/widgets/over_view_dot_indicator.dart';

class OverViewDotsGroup extends StatelessWidget {
  final int currentPageIndex;
  const OverViewDotsGroup({super.key, required this.currentPageIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child:
                    OverViewDotIndicator(isActive: index == currentPageIndex),
              )),
    );
  }
}
