import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/DrawerPart/active_inactive_drawer_item.dart';
import 'package:responsive_dashboard/Models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

class CustomDrawerItemListView extends StatefulWidget {
  const CustomDrawerItemListView({super.key});

  @override
  State<CustomDrawerItemListView> createState() =>
      _CustomDrawerItemListViewState();
}

class _CustomDrawerItemListViewState extends State<CustomDrawerItemListView> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(
        image: Assets.imagesTransactions, title: "My Transaction"),
    const DrawerItemModel(image: Assets.imagesStatistics, title: "Statistics"),
    const DrawerItemModel(image: Assets.imagesWallet, title: "Wallet Account"),
    const DrawerItemModel(
        image: Assets.imagesInvestMent, title: "My Investments"),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                if (index != activeIndex) {
                  activeIndex = index;
                  setState(() {});
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: index == activeIndex
                    ? ActiveDrawerItem(drawerItemModel: items[index])
                    : InActiveDrawerItem(drawerItemModel: items[index]),
              ),
            ));
  }
}
