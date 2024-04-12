import 'package:flutter/material.dart';
import 'package:full_course_project/core/theming/app_text_styles.dart';
import 'package:full_course_project/features/over_view/data/models/over_view_income_statistics_item_model.dart';

class OverViewIncomeStatisticsListViewIndicator extends StatelessWidget {
  final OverViewIncomeStatisticsItemModel overViewIncomeIndicatorModel;
  const OverViewIncomeStatisticsListViewIndicator({
    super.key,
    required this.overViewIncomeIndicatorModel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: overViewIncomeIndicatorModel.color,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              overViewIncomeIndicatorModel.title,
              style: AppTextStyles.f16Regular(context),
            ),
          ],
        ),
        Text(
          '${overViewIncomeIndicatorModel.percentage}%',
          style: AppTextStyles.f16Regular(context).copyWith(
            color: const Color(0xFF4EB7F2),
          ),
        ),
      ],
    );
  }
}
