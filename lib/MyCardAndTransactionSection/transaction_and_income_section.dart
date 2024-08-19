import 'package:flutter/material.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/card_and_transaction_section.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/income_section.dart';

class TransactionAndIncomeSection extends StatelessWidget {
  const TransactionAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 12.0,
        ),
        CardAndTransactionSection(),
        SizedBox(
          height: 12.0,
        ),
        Expanded(child: IncomeSection()),
      ],
    );
  }
}
