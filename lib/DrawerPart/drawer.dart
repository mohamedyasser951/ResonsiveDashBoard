// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/DrawerPart/active_inactive_drawer_item.dart';
import 'package:responsive_dashboard/DrawerPart/custom_list_view.dart';
import 'package:responsive_dashboard/DrawerPart/user_info_list_tile.dart';
import 'package:responsive_dashboard/Models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfoListTile(),
          ),
          CustomDrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: const SizedBox(
                  height: 20.0,
                )),
                Card(
                  color: Colors.white,
                  elevation: 0.0,
                  child: ListTile(
                    leading: SvgPicture.asset(Assets.imagesSettings),
                    title: const Text("Setting system"),
                  ),
                ),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesLogout, title: "Logout account")),
                const SizedBox(
                  height: 48.0,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
