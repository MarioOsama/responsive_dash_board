import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:full_course_project/core/theming/app_text_styles.dart';
import 'package:full_course_project/features/expenses_invoice/ui/widgets/invoice_last_transaction_list_view.dart';

class InvoiceLastTransaction extends StatelessWidget {
  const InvoiceLastTransaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppTextStyles.f16Medium(context),
        ),
        const SizedBox(height: 16),
        const InvoiceLastTransactionList(),
      ],
    );
  }
}
