import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:full_course_project/core/theming/app_text_styles.dart';
import 'package:full_course_project/features/drawer/ui/data/models/drawer_item_model.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  final bool isSelected;
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 30,
      leading: SvgPicture.asset(drawerItemModel.imagePath),
      title: Text(
        drawerItemModel.title,
        style: AppTextStyles.f16Regular(context),
      ),
    );
  }
}

class ActiveDrawerItem extends StatefulWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  State<ActiveDrawerItem> createState() => _ActiveDrawerItemState();
}

class _ActiveDrawerItemState extends State<ActiveDrawerItem>
    with SingleTickerProviderStateMixin {
  late Animation<Color?> colorTweenAnimation;
  late Animation<double?> paddingTweenAnimation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);

    controller.forward();

    colorTweenAnimation =
        ColorTween(begin: const Color(0xFF064061), end: const Color(0xFF4EB7F2))
            .animate(controller);

    paddingTweenAnimation =
        Tween<double>(begin: 30, end: 40).animate(controller);

    colorTweenAnimation.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: paddingTweenAnimation.value,
      leading: SvgPicture.asset(widget.drawerItemModel.imagePath),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          widget.drawerItemModel.title,
          style: AppTextStyles.f16Bold(context)
              .copyWith(color: colorTweenAnimation.value),
        ),
      ),
      trailing: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: 3,
        color: const Color(0xFF4EB7F2),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
