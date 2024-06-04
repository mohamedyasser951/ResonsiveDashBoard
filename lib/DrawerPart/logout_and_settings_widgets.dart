import 'package:flutter/material.dart';
import 'package:responsive_dashboard/DrawerPart/active_inactive_drawer_item.dart';
import 'package:responsive_dashboard/Models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

class LogoutAndSettingWidgets extends StatelessWidget {
  const LogoutAndSettingWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
            child: SizedBox(
          height: 20.0,
        )),
        Card(
          color: Colors.white,
          elevation: 0.0,
          child: InActiveDrawerItem(
              drawerItemModel: DrawerItemModel(
                  image: Assets.imagesSettings, title: "Setting system")),
        ),
        Card(
          color: Colors.white,
          elevation: 0.0,
          child: InActiveDrawerItem(
              drawerItemModel: DrawerItemModel(
                  image: Assets.imagesLogout, title: "Logout account")),
        ),
        SizedBox(
          height: 48.0,
        )
      ],
    );
  }
}
