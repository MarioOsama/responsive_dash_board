import 'package:flutter/material.dart';
import 'package:full_course_project/core/theming/app_text_styles.dart';
import 'package:full_course_project/features/over_view/ui/widgets/over_view_cards_page_view.dart';
import 'package:full_course_project/features/over_view/ui/widgets/over_view_dots_group.dart';

class OverViewMyCards extends StatefulWidget {
  const OverViewMyCards({super.key});

  @override
  State<OverViewMyCards> createState() => _OverViewMyCardsState();
}

class _OverViewMyCardsState extends State<OverViewMyCards> {
  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();

    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Card',
          style: AppTextStyles.f20SemiBold(context).copyWith(
            color: const Color(0xFF064061),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        OverViewCardsPageView(
          pageController: _pageController,
        ),
        const SizedBox(
          height: 10,
        ),
        OverViewDotsGroup(
          currentPageIndex: currentPage,
        ),
      ],
    );
  }
}
