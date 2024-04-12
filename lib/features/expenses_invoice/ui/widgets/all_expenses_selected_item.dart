import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:full_course_project/core/theming/app_text_styles.dart';
import 'package:full_course_project/features/expenses_invoice/data/models/all_expenses_item_model.dart';
import 'package:full_course_project/features/expenses_invoice/ui/widgets/all_expenses_item_header.dart';

class SelectedCard extends StatelessWidget {
  const SelectedCard({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    final String iconImage = allExpensesItemModel.iconPath;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      decoration: ShapeDecoration(
        color: const Color(0xFF4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: Color(0xFFFFFFFF),
            width: 1,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
              iconImage: iconImage, headerColor: Colors.white),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.title,
              style: AppTextStyles.f16SemiBold(context).copyWith(
                color: const Color(0xFFFFFFFF),
              ),
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.date,
              style: AppTextStyles.f14Regular(context).copyWith(
                color: const Color(0xFFFAFAFA),
              ),
            ),
          ),
          const SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.amount.toString(),
              style: AppTextStyles.f24SemiBold(context).copyWith(
                color: const Color(0xFFFFFFFF),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
