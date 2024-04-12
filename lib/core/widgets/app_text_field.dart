import 'package:flutter/material.dart';
import 'package:full_course_project/core/theming/app_text_styles.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  const AppTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFFAFAFA),
        hintText: hint,
        hintStyle: AppTextStyles.f16Regular(context).copyWith(
          color: const Color(0xFFAAAAAA),
        ),
        contentPadding:
            const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
        focusedBorder: _buildBorder(),
        enabledBorder: _buildBorder(),
      ),
    );
  }

  UnderlineInputBorder _buildBorder() {
    return UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
