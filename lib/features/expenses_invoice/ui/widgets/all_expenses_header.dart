import 'package:flutter/material.dart';
import 'package:full_course_project/core/widgets/header_time_range_button.dart';
import 'package:full_course_project/features/expenses_invoice/ui/widgets/all_expenses_header_title.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        AllExpensesHeaderTitle(),
        Spacer(),
        HeaderTimeRangeButton(),
      ],
    );
  }
}
