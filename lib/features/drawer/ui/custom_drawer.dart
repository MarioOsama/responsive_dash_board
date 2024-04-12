import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:full_course_project/core/models/user_info_list_tile_model.dart';
import 'package:full_course_project/core/theming/assets.dart';
import 'package:full_course_project/features/drawer/ui/data/models/drawer_item_model.dart';
import 'package:full_course_project/features/drawer/ui/widgets/drawer_item.dart';
import 'package:full_course_project/features/drawer/ui/widgets/drawer_items_list_view.dart';
import 'package:full_course_project/core/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemModel> drawerActionItems = [
    DrawerItemModel(title: 'Settings', imagePath: Assets.imagesSvgsSetting),
    DrawerItemModel(title: 'Lougout', imagePath: Assets.imagesSvgsLogout),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfoListTile(
              userModel: UserInfoListTileModel(
                userName: 'Lekan Okeowo',
                userMail: 'demo@gmail.com',
                imagePath: Assets.imagesSvgsRightAvatar,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const DrawerItemsListView(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InActiveDrawerItem(drawerItemModel: drawerActionItems[0]),
                  InActiveDrawerItem(drawerItemModel: drawerActionItems[1]),
                  const SizedBox(
                    height: 48,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
