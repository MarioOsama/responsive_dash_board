import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:full_course_project/core/theming/app_text_styles.dart';
import 'package:full_course_project/features/over_view/data/models/over_view_income_statistics_item_model.dart';

class OverViewIncomeStatisticsDetailedChart extends StatefulWidget {
  final List<OverViewIncomeStatisticsItemModel> statisticsListItems;
  const OverViewIncomeStatisticsDetailedChart({
    super.key,
    required this.statisticsListItems,
  });

  @override
  State<OverViewIncomeStatisticsDetailedChart> createState() =>
      _OverViewIncomeStatisticsDetailedChartState();
}

class _OverViewIncomeStatisticsDetailedChartState
    extends State<OverViewIncomeStatisticsDetailedChart> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return PieChart(
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
              sectionsSpace: 0,
              centerSpaceRadius: constraints.maxWidth * 0.00,
              sections: showingSections(context, constraints.maxWidth * 0.4),
            ),
          );
        },
      ),
    );
  }

  List<PieChartSectionData> showingSections(
      BuildContext context, double radius) {
    return widget.statisticsListItems.map(
      (item) {
        final index = widget.statisticsListItems.indexOf(item);
        final isTouched = index == touchedIndex;
        final currentRadius = isTouched ? radius : radius + 10;
        return PieChartSectionData(
          color: isTouched ? item.color.withOpacity(0.5) : item.color,
          value: double.parse(item.percentage.replaceAll('%', '')),
          radius: currentRadius,
          showTitle: true,
          title: isTouched ? item.percentage : item.title,
          titleStyle: isTouched
              ? AppTextStyles.f16SemiBold(context)
              : AppTextStyles.f12Regular(context).copyWith(color: Colors.white),
          titlePositionPercentageOffset: isTouched ? 0.6 : 0.5,
        );
      },
    ).toList();
  }
}
