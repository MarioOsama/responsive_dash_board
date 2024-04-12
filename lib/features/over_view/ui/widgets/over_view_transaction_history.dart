import 'package:flutter/material.dart';
import 'package:full_course_project/features/over_view/ui/widgets/over_view_tranasaction_history_list_view.dart';
import 'package:full_course_project/features/over_view/ui/widgets/over_view_transaction_history_header.dart';

class OverViewTransactionHistory extends StatelessWidget {
  const OverViewTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OverViewTransactionHistoryHeader(),
        SizedBox(
          height: 16,
        ),
        OverViewTransactionHistoryListView(),
      ],
    );
  }
}
