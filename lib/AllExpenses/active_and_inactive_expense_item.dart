import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:responsive_dashboard/Models/expense_item_model.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class ActiveExpenseItem extends StatelessWidget {
  final bool isActive;
  const ActiveExpenseItem({
    super.key,
    required this.isActive,
    required this.itemModel,
  });
  final ExpenseItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          border: Border.all(width: 0.1, color: Colors.grey),
          color: isActive ? const Color(0xFF4EB7F2) : Colors.white,
          borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor:
                    isActive ? Colors.white.withOpacity(0.7) : const Color(0xFFFAFAFA),
                child: Center(
                    child: SvgPicture.asset(
                  itemModel.image,
                  colorFilter: ColorFilter.mode(
                      isActive ? Colors.white : const Color(0xFF4EB7F2),
                      BlendMode.dst),
                )),
              ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: isActive ? Colors.white : Colors.black,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: isActive
                ? AppTextStyles.styleBold16(context).copyWith(color: Colors.white)
                : AppTextStyles.styleBold16(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: AppTextStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            itemModel.price,
            style: isActive
                ? AppTextStyles.styleSemiBold24(context).copyWith(color: Colors.white)
                : AppTextStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}
