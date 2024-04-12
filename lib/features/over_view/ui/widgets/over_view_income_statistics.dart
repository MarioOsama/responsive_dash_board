import 'package:flutter/material.dart';
import 'package:full_course_project/core/utils/size_config.dart';
import 'package:full_course_project/features/over_view/data/models/over_view_income_statistics_item_model.dart';
import 'package:full_course_project/features/over_view/ui/widgets/over_view_income_statistics_chart.dart';
import 'package:full_course_project/features/over_view/ui/widgets/over_view_income_statistics_detailed_chart.dart';
import 'package:full_course_project/features/over_view/ui/widgets/over_view_income_statistics_list_view.dart';

class OverViewIncomeStatistics extends StatelessWidget {
  const OverViewIncomeStatistics({super.key});

  static const List<OverViewIncomeStatisticsItemModel> indicatorsListItems = [
    OverViewIncomeStatisticsItemModel(
      color: Color(0xFF208CC8),
      title: 'Design service',
      percentage: '40%',
    ),
    OverViewIncomeStatisticsItemModel(
      color: Color(0xFF4EB7F2),
      title: 'Design product',
      percentage: '25%',
    ),
    OverViewIncomeStatisticsItemModel(
      color: Color(0xFF064061),
      title: 'Product royalti',
      percentage: '20%',
    ),
    OverViewIncomeStatisticsItemModel(
      color: Color(0xFFE2DECD),
      title: 'Other',
      percentage: '15%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return screenWidth < SizeConfig.incomeSectionBreakpoint &&
            screenWidth >= SizeConfig.desktop
        ? Expanded(child: _buildChartOnly())
        : _buildChartAndIndicators();
  }

  Row _buildChartAndIndicators() {
    return const Row(
      children: [
        SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: OverViewIncomeStatisticsChart(
            statisticsListItems: indicatorsListItems,
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          flex: 3,
          child: OverViewIncomeStatisticsListView(
            indicatorsListItems: indicatorsListItems,
          ),
        ),
      ],
    );
  }

  // Widget _buildIndicatorsOnly() {
  //   return const Padding(
  //     padding: EdgeInsets.only(top: 8.0),
  //     child: OverViewIncomeStatisticsListView(
  //       indicatorsListItems: indicatorsListItems,
  //       padding: EdgeInsets.symmetric(vertical: 5.0),
  //     ),
  //   );
  // }

  Widget _buildChartOnly() {
    return const OverViewIncomeStatisticsDetailedChart(
      statisticsListItems: indicatorsListItems,
    );
  }
}
