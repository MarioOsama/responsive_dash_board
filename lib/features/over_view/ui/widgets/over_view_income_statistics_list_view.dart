import 'package:flutter/material.dart';
import 'package:full_course_project/features/over_view/data/models/over_view_income_statistics_item_model.dart';
import 'package:full_course_project/features/over_view/ui/widgets/over_view_income_statistics_list_view_indicator.dart';

class OverViewIncomeStatisticsListView extends StatelessWidget {
  final List<OverViewIncomeStatisticsItemModel> indicatorsListItems;
  final EdgeInsets? padding;
  const OverViewIncomeStatisticsListView(
      {super.key, required this.indicatorsListItems, this.padding});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: indicatorsListItems
          .map(
            (item) => Padding(
              padding: padding ?? EdgeInsets.zero,
              child: OverViewIncomeStatisticsListViewIndicator(
                overViewIncomeIndicatorModel:
                    indicatorsListItems[indicatorsListItems.indexOf(item)],
              ),
            ),
          )
          .toList(),
    );
  }
}
