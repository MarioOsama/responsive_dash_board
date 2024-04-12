import 'package:flutter/material.dart';
import 'package:full_course_project/core/models/user_info_list_tile_model.dart';
import 'package:full_course_project/core/theming/app_text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoListTileModel userModel;
  final EdgeInsets? margin;
  const UserInfoListTile({super.key, required this.userModel, this.margin});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin ?? const EdgeInsets.all(20),
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userModel.imagePath),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              userModel.userName,
              style: AppTextStyles.f16SemiBold(context),
            ),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              userModel.userMail,
              style: AppTextStyles.f12Regular(context),
            ),
          ),
        ),
      ),
    );
  }
}
