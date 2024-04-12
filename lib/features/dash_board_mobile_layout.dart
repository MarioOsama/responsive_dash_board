import 'package:flutter/material.dart';
import 'package:full_course_project/features/expenses_invoice/ui/expenses_invoice.dart';
import 'package:full_course_project/features/over_view/ui/widgets/over_view_income.dart';
import 'package:full_course_project/features/over_view/ui/widgets/over_view_my_card_history.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ExpensesInvoice(),
          SizedBox(height: 40),
          OverViewMyCardTransactionHistory(),
          SizedBox(height: 24),
          OverViewIncome(),
        ],
      ),
    );
  }
}
