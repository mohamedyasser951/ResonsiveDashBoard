import 'package:flutter/material.dart';
import 'package:responsive_dashboard/DrawerPart/active_inactive_drawer_item.dart';

import 'package:responsive_dashboard/Models/drawer_item_model.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0.0,
      child: isActive
          ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
          : InActiveDrawerItem(drawerItemModel: drawerItemModel),
    );
  }
}
