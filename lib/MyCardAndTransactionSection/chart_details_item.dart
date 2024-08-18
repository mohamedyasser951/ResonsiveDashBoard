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
    return ListTile(
      leading: Container(
        width: 6,
        height: 6,
        decoration: BoxDecoration(color: model.color, shape: BoxShape.circle),
      ),
      title: Text(
        model.title,
        style: AppTextStyles.styleReqular16,
      ),
      trailing: Text(
        model.precentage,
        style: AppTextStyles.styleMedium16
            .copyWith(color: const Color(0Xff208CC8)),
      ),
    );
  }
}
