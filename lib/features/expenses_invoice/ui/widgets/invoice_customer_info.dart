import 'package:flutter/material.dart';
import 'package:full_course_project/features/expenses_invoice/ui/widgets/invoice_info_item.dart';

class InvoiceCustomerInfo extends StatelessWidget {
  const InvoiceCustomerInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: InvoiceInfoItem(
            infoTitle: 'Customer Name',
            textFieldHint: 'Type customer name',
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: InvoiceInfoItem(
            infoTitle: 'Customer Email',
            textFieldHint: 'Type customer email',
          ),
        ),
      ],
    );
  }
}
