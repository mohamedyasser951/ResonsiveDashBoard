import 'package:flutter/material.dart';
import 'package:responsive_dashboard/DrawerSection/drawer.dart';
import 'package:responsive_dashboard/dash_board_desktop_layout.dart';
import 'package:responsive_dashboard/dash_board_mobile_layout.dart';
import 'package:responsive_dashboard/dash_board_tablet_layout.dart';
import 'package:responsive_dashboard/responsive_dash_board.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Scaffold(
        key: scaffoldKey,
        drawer: MediaQuery.of(context).size.width < 800
            ? const CustomDrawer()
            : null,
        appBar: MediaQuery.of(context).size.width < 800
            ? AppBar(
                backgroundColor: const Color(0XFFFAFAFA ),
                leading: IconButton(
                    onPressed: () {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    icon: const Icon(Icons.menu)),
              )
            : null,
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
