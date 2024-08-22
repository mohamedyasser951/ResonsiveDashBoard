import 'package:flutter/material.dart';

import 'package:responsive_dashboard/Models/chart_details_model.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class ChartDetailsItem extends StatelessWidget {
  final ChartDetailsModel model;
  const ChartDetailsItem({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ListTile(
        leading: Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(color: model.color, shape: BoxShape.circle),
        ),
        title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            model.title,
            style: AppTextStyles.styleRegular12(context).copyWith(
                fontWeight: FontWeight.bold, color: const Color(0xFF064061)),
          ),
        ),
        trailing: Text(
          model.precentage,
          style: AppTextStyles.styleRegular14(context).copyWith(
            color: const Color(0Xff208CC8),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
