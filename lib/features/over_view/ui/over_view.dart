import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:full_course_project/features/over_view/ui/widgets/over_view_income.dart';
import 'package:full_course_project/features/over_view/ui/widgets/over_view_my_card_history.dart';

class OverView extends StatelessWidget {
  const OverView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        OverViewMyCardTransactionHistory(),
        SizedBox(height: 24),
        Expanded(child: OverViewIncome()),
      ],
    );
  }
}
