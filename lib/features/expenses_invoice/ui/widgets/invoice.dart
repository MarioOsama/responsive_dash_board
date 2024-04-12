import 'package:flutter/material.dart';
import 'package:full_course_project/core/widgets/app_background_container.dart';
import 'package:full_course_project/features/expenses_invoice/ui/widgets/invoice_actions.dart';
import 'package:full_course_project/features/expenses_invoice/ui/widgets/invoice_customer_info.dart';
import 'package:full_course_project/features/expenses_invoice/ui/widgets/invoice_header.dart';
import 'package:full_course_project/features/expenses_invoice/ui/widgets/invoice_item_info.dart';
import 'package:full_course_project/features/expenses_invoice/ui/widgets/invoice_last_transaction.dart';

class Invoice extends StatelessWidget {
  const Invoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          InvoiceHeader(),
          SizedBox(height: 24),
          InvoiceLastTransaction(),
          Divider(
            color: Color(0xFFF1F1F1),
            thickness: 2,
            height: 48,
          ),
          InvoiceCustomerInfo(),
          SizedBox(height: 24),
          InvoiceItemInfo(),
          SizedBox(height: 24),
          InvoiceActions(),
        ],
      ),
    );
  }
}
