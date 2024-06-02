import 'package:flutter/material.dart';

class ResponsiveDashBoardBuilder extends StatelessWidget {
  final WidgetBuilder mobileLayout, tabletLayout, deskTopLayout;
  const ResponsiveDashBoardBuilder({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.deskTopLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < 900) {
          return tabletLayout(context);
        } else {
          return deskTopLayout(context);
        }
      },
    );
  }
}