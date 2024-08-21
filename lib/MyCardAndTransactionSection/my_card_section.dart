import 'package:flutter/material.dart';

import 'package:responsive_dashboard/MyCardAndTransactionSection/expandable_page_view_builder.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/single_dot_indicator.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({
    super.key,
  });

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPgeIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentPgeIndex = pageController.page!.round();
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My card",
          style: AppTextStyles.styleSemiBold20(context)
              .copyWith(color: const Color(0xFF064061)),
        ),
        const SizedBox(
          height: 8.0,
        ),
        ExpandablePageViewBuilder(
          pageController: pageController,
        ),
        const SizedBox(
          height: 8.0,
        ),
        Row(
          children: List.generate(
            3,
            (index) => Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: DotIndicator(isActive: index == currentPgeIndex),
            ),
          ),
        )
      ],
    );
  }
}
