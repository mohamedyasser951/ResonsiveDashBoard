import 'package:flutter/material.dart';
import 'package:responsive_dashboard/DrawerSection/drawer.dart';
import 'package:responsive_dashboard/dash_board_mobile_layout.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: DashBoardMobileLayout(),
            )),
      ],
    );
  }
}
