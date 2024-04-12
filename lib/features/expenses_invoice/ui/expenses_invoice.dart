import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:full_course_project/features/expenses_invoice/ui/widgets/all_expenses.dart';
import 'package:full_course_project/features/expenses_invoice/ui/widgets/invoice.dart';

class ExpensesInvoice extends StatelessWidget {
  const ExpensesInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AllExpenses(),
        SizedBox(height: 24),
        Invoice(),
        SizedBox(height: 24),
      ],
    );
  }
}
