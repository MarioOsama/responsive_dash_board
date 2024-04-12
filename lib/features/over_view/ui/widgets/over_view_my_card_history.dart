import 'package:flutter/material.dart';
import 'package:full_course_project/core/widgets/app_background_container.dart';
import 'package:full_course_project/features/over_view/ui/widgets/over_view_my_cards.dart';
import 'package:full_course_project/features/over_view/ui/widgets/over_view_transaction_history.dart';

class OverViewMyCardTransactionHistory extends StatelessWidget {
  const OverViewMyCardTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OverViewMyCards(),
          Divider(
            color: Color(0xFFF1F1F1),
            thickness: 2,
            height: 40,
          ),
          OverViewTransactionHistory(),
        ],
      ),
    );
  }
}
