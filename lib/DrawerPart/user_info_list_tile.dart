import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(Assets.imagesAvatar1),
        title: const Text(
          "Mohamed Yasser",
          style: AppTextStyles.styleMedium16,
        ),
        subtitle: const Text(
          "mohamedhcj@gmail.com",
          style: AppTextStyles.styleRegular12,
        ),
      ),
    );
  }
}
