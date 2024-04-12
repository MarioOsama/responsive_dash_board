import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:full_course_project/core/widgets/app_background_container.dart';
import 'package:full_course_project/features/expenses_invoice/ui/widgets/all_expenses_header.dart';
import 'package:full_course_project/features/expenses_invoice/ui/widgets/all_expenses_items_list.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemsList(),
        ],
      ),
    );
  }
}
