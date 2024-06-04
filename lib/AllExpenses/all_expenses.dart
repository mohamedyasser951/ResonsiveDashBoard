import 'package:flutter/material.dart';

import 'package:responsive_dashboard/AllExpenses/all_expense_header.dart';
import 'package:responsive_dashboard/AllExpenses/expense_list_builder.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16.0,
          ),
          ExpenseListBuilder(),
        ],
      ),
    );
  }
}
