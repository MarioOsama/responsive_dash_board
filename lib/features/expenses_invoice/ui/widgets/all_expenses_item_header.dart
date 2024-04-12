import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  final String iconImage;
  final Color? headerColor;
  const AllExpensesItemHeader(
      {super.key, required this.iconImage, this.headerColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(28, 255, 255, 255),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    iconImage,
                    colorFilter: ColorFilter.mode(
                        headerColor ?? const Color(0xFF4EB7F2),
                        BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Expanded(
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: headerColor ?? const Color(0xFF4EB7F2),
            ),
          ),
        ),
      ],
    );
  }
}
