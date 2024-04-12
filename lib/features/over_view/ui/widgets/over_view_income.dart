import 'package:flutter/material.dart';
import 'package:full_course_project/core/widgets/app_background_container.dart';
import 'package:full_course_project/features/over_view/ui/widgets/over_view_income_header.dart';
import 'package:full_course_project/features/over_view/ui/widgets/over_view_income_statistics.dart';

class OverViewIncome extends StatelessWidget {
  const OverViewIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppBackgroundContainer(
      child: Column(
        children: [
          OverViewIncomeHeader(),
          OverViewIncomeStatistics(),
        ],
      ),
    );
  }
}
