import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:full_course_project/features/over_view/ui/widgets/over_view_card.dart';

class OverViewCardsPageView extends StatelessWidget {
  final PageController pageController;
  const OverViewCardsPageView({super.key, required this.pageController});
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      allowImplicitScrolling: true,
      animateFirstPage: true,
      scrollDirection: Axis.horizontal,
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: OverViewCard(
                  color: index == 0
                      ? null
                      : index == 1
                          ? Colors.amber
                          : Colors.red,
                ),
              )),
    );
  }
}
