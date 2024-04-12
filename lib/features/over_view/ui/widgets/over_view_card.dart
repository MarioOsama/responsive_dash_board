import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:full_course_project/core/theming/app_text_styles.dart';
import 'package:full_course_project/core/theming/assets.dart';

class OverViewCard extends StatelessWidget {
  final Color? color;
  const OverViewCard({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return AspectRatio(
      aspectRatio: 2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color ?? const Color(0xFF4EB7F2),
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/pngs/bank_card_bg.png')),
        ),
        child: Padding(
          padding: EdgeInsets.all(screenWidth < 1385 ? 16.0 : 24.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CardHeader(),
              Spacer(),
              CardFooter(),
            ],
          ),
        ),
      ),
    );
  }
}

class CardFooter extends StatelessWidget {
  const CardFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '0918 8124 0042 8129',
            style: AppTextStyles.f24SemiBold(context)
                .copyWith(color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '12/20 - 124',
            style:
                AppTextStyles.f16Regular(context).copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class CardHeader extends StatelessWidget {
  const CardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Card name',
              style: AppTextStyles.f16Regular(context)
                  .copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Syah Bandi',
              style: AppTextStyles.f20Medium(context)
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
        const Spacer(),
        SvgPicture.asset(Assets.imagesSvgsGallery),
      ],
    );
  }
}
