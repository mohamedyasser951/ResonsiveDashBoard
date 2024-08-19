import 'package:flutter/material.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/card_and_transaction_section.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/income_section.dart';
import 'package:responsive_dashboard/all_expenses_and_quick_invoice.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndInvoiceSection(),
          SizedBox(
            height: 20.0,
          ),
          CardAndTransactionSection(),
          SizedBox(
            height: 20.0,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
