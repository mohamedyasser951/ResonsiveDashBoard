import 'package:flutter/material.dart';
import 'package:responsive_dashboard/DrawerSection/drawer.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/transaction_and_income_section.dart';
import 'package:responsive_dashboard/all_expenses_and_quick_invoice.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 20.0,
        ),
        Expanded(flex: 2, child: AllExpensesAndInvoiceSection()),
        SizedBox(
          width: 20.0,
        ),
        Expanded(child: TransactionAndIncomeSection()),

        SizedBox(
          width: 8.0,
        ),
      ],
    );
  }
}
