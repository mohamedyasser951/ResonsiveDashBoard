import 'package:flutter/material.dart';
import 'package:responsive_dashboard/AllExpenses/all_expenses.dart';
import 'package:responsive_dashboard/QuickInvoice/quick_invoice_section.dart';

class AllExpensesAndInvoiceSection extends StatelessWidget {
  const AllExpensesAndInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 24.0,
        ),
        AllExpenses(),
        SizedBox(
          height: 24.0,
        ),
        QuickInvoiceSection()
      ],
    );
  }
}
