import 'package:flutter/material.dart';
import 'package:full_course_project/core/theming/assets.dart';
import 'package:full_course_project/features/drawer/ui/data/models/drawer_item_model.dart';
import 'package:full_course_project/features/drawer/ui/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> drawerItemModels = const [
    DrawerItemModel(
      title: 'Dashboard',
      imagePath: Assets.imagesSvgsDashboard,
    ),
    DrawerItemModel(
      title: 'My Transactions',
      imagePath: Assets.imagesSvgsTransaction,
    ),
    DrawerItemModel(
      title: 'Statistics',
      imagePath: Assets.imagesSvgsStatistics,
    ),
    DrawerItemModel(
      title: 'Wallet Account',
      imagePath: Assets.imagesSvgsWallet,
    ),
    DrawerItemModel(
      title: 'My Investments',
      imagePath: Assets.imagesSvgsInvestments,
    ),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItemModels.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex == index) return;
            setState(() {
              activeIndex = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: DrawerItem(
              drawerItemModel: drawerItemModels[index],
              isSelected: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
