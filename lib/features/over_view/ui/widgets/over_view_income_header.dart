import 'package:flutter/material.dart';
import 'package:full_course_project/core/theming/app_text_styles.dart';
import 'package:full_course_project/core/widgets/header_time_range_button.dart';

class OverViewIncomeHeader extends StatelessWidget {
  const OverViewIncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppTextStyles.f20SemiBold(context).copyWith(
            color: const Color(0xFF064061),
          ),
        ),
        const HeaderTimeRangeButton(),
      ],
    );
  }
}
