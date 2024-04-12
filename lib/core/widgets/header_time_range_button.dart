import 'package:flutter/material.dart';
import 'package:full_course_project/core/theming/app_text_styles.dart';

class HeaderTimeRangeButton extends StatelessWidget {
  const HeaderTimeRangeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Text(
              'Monthly',
              style: AppTextStyles.f16Medium(context),
            ),
            const SizedBox(width: 18),
            const Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Color(0xFF064061),
            ),
          ],
        ),
      ),
    );
  }
}
