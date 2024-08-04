import 'package:flutter/material.dart';
import 'package:responsive_dashboard/DrawerSection/user_info_list_tile.dart';
import 'package:responsive_dashboard/Models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

class LatestTransactionBuilder extends StatelessWidget {
  final List<UserInfoModel> latestTransaction = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        name: "Mohamed yasser",
        email: "Mohamedyassser156@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        name: "Mohamed Ahmed",
        email: "Mohamedyassser156@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        name: "Mohamed yasser",
        email: "Mohamedyassser156@gmail.com"),
  ];
  LatestTransactionBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: latestTransaction
            .map((UserInfoModel userInfo) => IntrinsicWidth(
                  child: UserInfoListTile(
                    userInfoModel: userInfo,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
