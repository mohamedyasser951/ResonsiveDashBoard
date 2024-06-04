import 'package:flutter/material.dart';
import 'package:responsive_dashboard/DrawerPart/custom_list_view.dart';
import 'package:responsive_dashboard/DrawerPart/logout_and_settings_widgets.dart';
import 'package:responsive_dashboard/DrawerPart/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(),
          ),
          CustomDrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: LogoutAndSettingWidgets(),
          )
        ],
      ),
    );
  }
}
