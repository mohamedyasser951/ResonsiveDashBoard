import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/my_card_item.dart';

class ExpandablePageViewBuilder extends StatelessWidget {
  final PageController pageController;

  const ExpandablePageViewBuilder({
    super.key,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        controller: pageController,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: List.generate(
          3,
          (index) => const MyCard(),
        ));
  }
}
