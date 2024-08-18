import 'package:flutter/material.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/my_card_section.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/transaction_history.dart';

class CardAndTransactionSection extends StatelessWidget {
  const CardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8.0,
            ),
            MyCardSection(),
            TransactionHistorySection(),
          ],
        ),
      ),
    );
  }
}
