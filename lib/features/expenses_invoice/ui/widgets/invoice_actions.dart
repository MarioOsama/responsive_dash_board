import 'package:flutter/material.dart';
import 'package:full_course_project/features/expenses_invoice/ui/widgets/invoice_action_button.dart';

class InvoiceActions extends StatelessWidget {
  const InvoiceActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: InvoiceActionButton(
            title: 'Add more details',
            backgroundColor: Colors.white,
            foregroundColor: Color(0xFF4EB7F2),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(child: InvoiceActionButton(title: 'Send money')),
      ],
    );
  }
}
