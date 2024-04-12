import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:full_course_project/core/theming/app_text_styles.dart';
import 'package:full_course_project/features/over_view/data/models/over_view_income_statistics_item_model.dart';

class OverViewIncomeStatisticsChart extends StatefulWidget {
  final List<OverViewIncomeStatisticsItemModel> statisticsListItems;
  const OverViewIncomeStatisticsChart({
    super.key,
    required this.statisticsListItems,
  });

  @override
  State<OverViewIncomeStatisticsChart> createState() =>
      _OverViewIncomeStatisticsChartState();
}

class _OverViewIncomeStatisticsChartState
    extends State<OverViewIncomeStatisticsChart> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
            touchCallback: (FlTouchEvent event, pieTouchResponse) {
              setState(() {
                if (!event.isInterestedForInteractions ||
                    pieTouchResponse == null ||
                    pieTouchResponse.touchedSection == null) {
                  touchedIndex = -1;
                  return;
                }
                touchedIndex =
                    pieTouchResponse.touchedSection!.touchedSectionIndex;
              });
            },
          ),
          borderData: FlBorderData(
            show: false,
          ),
          sectionsSpace: 0,
          centerSpaceRadius: 40,
          sections: showingSections(),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return widget.statisticsListItems.map(
      (item) {
        final index = widget.statisticsListItems.indexOf(item);
        final isTouched = index == touchedIndex;
        final radius = isTouched ? 30.0 : 20.0;
        return PieChartSectionData(
          color: isTouched ? item.color.withOpacity(0.5) : item.color,
          value: double.parse(item.percentage.replaceAll('%', '')),
          radius: radius,
          showTitle: isTouched ? true : false,
          title: isTouched ? item.percentage : '',
          titleStyle: AppTextStyles.f16SemiBold(context),
        );
      },
    ).toList();
  }
}
