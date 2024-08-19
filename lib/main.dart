import 'package:flutter/material.dart';
import 'package:responsive_dashboard/dash_board_desktop_layout.dart';
import 'package:responsive_dashboard/dash_board_mobile_layout.dart';
import 'package:responsive_dashboard/dash_board_tablet_layout.dart';
import 'package:responsive_dashboard/responsive_dash_board.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Scaffold(
        backgroundColor: const Color(0xFFF7F9FA),
        body: ResponsiveDashBoardBuilder(
          mobileLayout: (context) => const DashBoardMobileLayout(),
          tabletLayout: (context) => const DashBoardTabletLayout(),
          deskTopLayout: (context) => const DashBoardDesktopLayout(),
        ),
      ),
    );
  }
}
