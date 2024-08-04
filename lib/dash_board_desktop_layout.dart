import 'package:flutter/material.dart';
import 'package:responsive_dashboard/DrawerSection/drawer.dart';
import 'package:responsive_dashboard/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dashboard/MyCardAndTransactionSection/card_and_transaction_section.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 24.0,
        ),
        Expanded(flex: 2, child: AllExpensesAndInvoiceSection()),
        SizedBox(
          width: 24.0,
        ),
        Expanded(child: CardAndTransactionSection()),
        SizedBox(
          width: 18.0,
        ),
      ],
    );
  }
}
