import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/Models/user_info_model.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoModel userInfoModel;
  const UserInfoListTile({
    super.key,
    required this.userInfoModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title:  Text(
          userInfoModel.name,
          style: AppTextStyles.styleMedium16,
        ),
        subtitle:  Text(
          userInfoModel.email,
          style: AppTextStyles.styleRegular12,
        ),
      ),
    );
  }
}
