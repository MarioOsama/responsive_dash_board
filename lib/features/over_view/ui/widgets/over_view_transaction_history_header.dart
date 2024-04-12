import 'package:flutter/material.dart';
import 'package:full_course_project/core/theming/app_text_styles.dart';

class OverViewTransactionHistoryHeader extends StatelessWidget {
  const OverViewTransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppTextStyles.f20SemiBold(context)
              .copyWith(color: const Color(0xFF064061)),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'See All',
            style: AppTextStyles.f16Medium(context)
                .copyWith(color: const Color(0xFF4EB7F2)),
          ),
        ),
      ],
    );
  }
}
