import 'package:flutter/material.dart';

import 'package:responsive_dashboard/Models/transaction_model.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class TransactionItem extends StatelessWidget {
  final TransactionModel model;
  const TransactionItem({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0XFFFAFAFA),
          borderRadius: BorderRadius.circular(12.0)),
      child: ListTile(
        title: Text(
          model.title,
          style: AppTextStyles.styleMedium16
              .copyWith(color: const Color(0xff064061)),
        ),
        subtitle: Text(
          model.date,
          style: AppTextStyles.styleReqular16
              .copyWith(color: const Color(0xFFAAAAAA)),
        ),
        trailing: Text(
          model.money,
          style: AppTextStyles.styleMedium16.copyWith(
            color: model.isWithdrawal
                ? const Color(0xFFF3735E)
                : const Color(0XFF7DD97B),
          ),
        ),
      ),
    );
  }
}
