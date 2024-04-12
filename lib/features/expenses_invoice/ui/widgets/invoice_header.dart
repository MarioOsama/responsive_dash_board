import 'package:flutter/material.dart';
import 'package:full_course_project/core/theming/app_text_styles.dart';

class InvoiceHeader extends StatelessWidget {
  const InvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppTextStyles.f20SemiBold(context)
              .copyWith(color: const Color(0xFF064061)),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            color: Color(0xFF4EB7F2),
          ),
        ),
      ],
    );
  }
}
