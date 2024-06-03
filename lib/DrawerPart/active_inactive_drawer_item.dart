import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/Models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class ActiveDrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  const ActiveDrawerItem({super.key, required this.drawerItemModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        trailing: Container(
          width: 3.27,
          color: const Color(0xFF4EB7F2),
        ),
        title: Text(
          drawerItemModel.title,
          style: AppTextStyles.styleBold16,
        ),
      ),
    );
  }
}

class InActiveDrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  const InActiveDrawerItem({super.key, required this.drawerItemModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0.0,
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        title: Text(
          drawerItemModel.title,
          // style: AppTextStyles.styleReqular16,
        ),
      ),
    );
  }
}
