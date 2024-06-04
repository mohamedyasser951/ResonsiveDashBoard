import 'package:flutter/material.dart';
import 'package:responsive_dashboard/AllExpenses/all_expenses.dart';
import 'package:responsive_dashboard/DrawerPart/drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 24.0,),
        Expanded(flex: 3, child: AllExpenses()),
        Expanded(child: SizedBox())
      ],
    );
  }
}
