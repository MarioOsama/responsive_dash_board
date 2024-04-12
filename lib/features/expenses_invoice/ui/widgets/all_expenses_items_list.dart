import 'package:flutter/material.dart';
import 'package:full_course_project/core/theming/assets.dart';
import 'package:full_course_project/features/expenses_invoice/data/models/all_expenses_item_model.dart';
import 'package:full_course_project/features/expenses_invoice/ui/widgets/all_expenses_item.dart';

class AllExpensesItemsList extends StatefulWidget {
  const AllExpensesItemsList({super.key});

  @override
  State<AllExpensesItemsList> createState() => _AllExpensesItemsListState();
}

class _AllExpensesItemsListState extends State<AllExpensesItemsList> {
  final List<AllExpensesItemModel> allExpensesItems = const [
    AllExpensesItemModel(
      title: 'Balance',
      date: 'April 2022',
      iconPath: Assets.imagesSvgsBalance,
      amount: r'$20,129',
    ),
    AllExpensesItemModel(
      title: 'Income',
      date: 'April 2022',
      iconPath: Assets.imagesSvgsIncome,
      amount: r'$20,129',
    ),
    AllExpensesItemModel(
      title: 'Expenses',
      date: 'April 2022',
      iconPath: Assets.imagesSvgsExpense,
      amount: r'$20,129',
    ),
  ];

  int activeCardItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = allExpensesItems.map(
      (itemModel) {
        return _buildItem(itemModel);
      },
    ).toList();

    return Row(
      children: items.asMap().entries.map((item) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: item.value,
          ),
        );
      }).toList(),
    );
  }

  Widget _buildItem(AllExpensesItemModel itemModel) {
    final index = allExpensesItems.indexOf(itemModel);
    return GestureDetector(
      onTap: () => updateActiveCardItemIndex(index),
      child: AllExpensesItem(
        allExpensesItemModel: allExpensesItems[index],
        isSelected: activeCardItemIndex == index,
      ),
    );
  }

  void updateActiveCardItemIndex(int index) {
    setState(() {
      if (activeCardItemIndex == index) return;
      activeCardItemIndex = index;
    });
  }
}
