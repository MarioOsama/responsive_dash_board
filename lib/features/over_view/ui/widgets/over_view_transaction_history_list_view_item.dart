import 'package:flutter/material.dart';
import 'package:full_course_project/core/theming/app_text_styles.dart';
import 'package:full_course_project/features/over_view/data/models/over_view_transaction_history_list_view_model.dart';

class OverViewTransactionHistoryListViewItem extends StatelessWidget {
  final OverViewTransactionHistoryListViewModel transactionHistoryItemModel;
  const OverViewTransactionHistoryListViewItem({
    super.key,
    required this.transactionHistoryItemModel,
  });

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = transactionHistoryItemModel.isWithdrawal
        ? const Color(0xFFF3735E)
        : const Color(0xFF7DD97B);
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: const Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionHistoryItemModel.name,
          style: AppTextStyles.f16SemiBold(context),
        ),
        subtitle: Text(
          transactionHistoryItemModel.date,
          style: AppTextStyles.f16Regular(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(
          transactionHistoryItemModel.amount,
          style: AppTextStyles.f20SemiBold(context).copyWith(
            color: backgroundColor,
          ),
        ),
      ),
    );
  }
}
