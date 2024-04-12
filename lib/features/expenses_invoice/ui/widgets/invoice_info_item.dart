import 'package:flutter/material.dart';
import 'package:full_course_project/core/theming/app_text_styles.dart';
import 'package:full_course_project/core/widgets/app_text_field.dart';

class InvoiceInfoItem extends StatelessWidget {
  final String infoTitle;
  final String textFieldHint;
  const InvoiceInfoItem({
    super.key,
    required this.infoTitle,
    required this.textFieldHint,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          infoTitle,
          style: AppTextStyles.f16Medium(context),
        ),
        const SizedBox(height: 12),
        AppTextField(hint: textFieldHint),
      ],
    );
  }
}
