import 'package:flutter/material.dart';
import 'package:full_course_project/features/expenses_invoice/data/models/all_expenses_item_model.dart';
import 'package:full_course_project/features/expenses_invoice/ui/widgets/all_expenses_selected_item.dart';
import 'package:full_course_project/features/expenses_invoice/ui/widgets/all_expenses_unselected_item.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;
  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      crossFadeState:
          isSelected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 300),
      firstChild: SelectedCard(allExpensesItemModel: allExpensesItemModel),
      secondChild: UnSelectedCard(allExpensesItemModel: allExpensesItemModel),
    );
  }
}
