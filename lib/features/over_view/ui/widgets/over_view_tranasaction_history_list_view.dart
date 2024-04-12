import 'package:flutter/material.dart';
import 'package:full_course_project/features/over_view/data/models/over_view_transaction_history_list_view_model.dart';
import 'package:full_course_project/features/over_view/ui/widgets/over_view_transaction_history_list_view_item.dart';

class OverViewTransactionHistoryListView extends StatelessWidget {
  const OverViewTransactionHistoryListView({
    super.key,
  });

  static const List<OverViewTransactionHistoryListViewModel>
      transactionHistoryItems = [
    OverViewTransactionHistoryListViewModel(
      name: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithdrawal: true,
    ),
    OverViewTransactionHistoryListViewModel(
      name: 'Landing Page project',
      date: '13 Apr, 2022',
      amount: r'$2,000',
      isWithdrawal: false,
    ),
    OverViewTransactionHistoryListViewModel(
      name: 'Juni Mobile App project',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithdrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionHistoryItems.map(
        (item) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: OverViewTransactionHistoryListViewItem(
              transactionHistoryItemModel: transactionHistoryItems[
                  transactionHistoryItems.indexOf(item)],
            ),
          );
        },
      ).toList(),
    );
  }
}
