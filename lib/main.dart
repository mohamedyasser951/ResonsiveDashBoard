import 'package:flutter/material.dart';
import 'package:responsive_dashboard/dash_board_desktop_layout.dart';
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
      home: ResponsiveDashBoardBuilder(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        deskTopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
