import 'package:flutter/material.dart';
import 'package:responsive_dashboard/DrawerSection/custom_list_view.dart';
import 'package:responsive_dashboard/DrawerSection/logout_and_settings_widgets.dart';
import 'package:responsive_dashboard/DrawerSection/user_info_list_tile.dart';
import 'package:responsive_dashboard/Models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  image: Assets.imagesAvatar1,
                  name: "Mohamed yasser",
                  email: "MohamedYaser@Gmail.com"),
            ),
          ),
          const CustomDrawerItemListView(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: LogoutAndSettingWidgets(),
          )
        ],
      ),
    );
  }
}
