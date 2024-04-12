import 'package:flutter/material.dart';
import 'package:full_course_project/core/theming/app_text_styles.dart';

class AllExpensesHeaderTitle extends StatelessWidget {
  const AllExpensesHeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'All Expenses',
      style: AppTextStyles.f20SemiBold(context).copyWith(
        color: const Color(0xFF064061),
      ),
    );
  }
}
