import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:full_course_project/core/widgets/user_info_list_tile.dart';
import 'package:full_course_project/core/models/user_info_list_tile_model.dart';

class InvoiceLastTransactionList extends StatelessWidget {
  const InvoiceLastTransactionList({
    super.key,
  });

  static const List<UserInfoListTileModel> items = [
    UserInfoListTileModel(
      imagePath: 'assets/images/svgs/center_avatar_0.svg',
      userName: 'Madrani Andi',
      userMail: 'Madraniadi20@gmail',
    ),
    UserInfoListTileModel(
      imagePath: 'assets/images/svgs/center_avatar_1.svg',
      userName: 'Josua Nunito',
      userMail: 'Josh Nunito@gmail.com',
    ),
    UserInfoListTileModel(
      imagePath: 'assets/images/svgs/center_avatar_0.svg',
      userName: 'Madrani Andi',
      userMail: 'Madraniadi20@gmail',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (item) => IntrinsicWidth(
                child: UserInfoListTile(
                  userModel: item,
                  margin: const EdgeInsets.only(right: 12),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
