import 'package:flutter/material.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/transacation_history_builder.dart';
import 'package:responsive_dashboard/utils/text_styles.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8.0,
        ),
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 4.0,
        ),
        Text(
          "13 April 2022",
          style: AppTextStyles.styleMedium16(context)
              .copyWith(color: const Color(0xFF4EB7F2)),
        ),
        TransacationHistoryBuilder(),
        const SizedBox(
          height: 8.0,
        ),
      ],
    );
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Transaction History",
          style: AppTextStyles.styleSemiBold20(context),
        ),
        Text(
          "See all",
          style: AppTextStyles.styleMedium16(context),
        )
      ],
    );
  }
}
