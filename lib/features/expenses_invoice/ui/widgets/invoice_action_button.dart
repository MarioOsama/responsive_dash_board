import 'package:flutter/material.dart';
import 'package:full_course_project/core/theming/app_text_styles.dart';

class InvoiceActionButton extends StatelessWidget {
  final String title;
  final Color? backgroundColor;
  final Color? foregroundColor;
  const InvoiceActionButton({
    super.key,
    required this.title,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor ?? const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          title,
          style: AppTextStyles.f18SemiBold(context)
              .copyWith(color: foregroundColor ?? Colors.white),
        ),
      ),
    );
  }
}
