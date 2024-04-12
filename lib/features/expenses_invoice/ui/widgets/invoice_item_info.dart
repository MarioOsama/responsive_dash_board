import 'package:flutter/material.dart';
import 'package:full_course_project/features/expenses_invoice/ui/widgets/invoice_info_item.dart';

class InvoiceItemInfo extends StatelessWidget {
  const InvoiceItemInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: InvoiceInfoItem(
            infoTitle: 'Item Name',
            textFieldHint: 'Type item name',
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: InvoiceInfoItem(
            infoTitle: 'Item Mount',
            textFieldHint: 'USD',
          ),
        ),
      ],
    );
  }
}
