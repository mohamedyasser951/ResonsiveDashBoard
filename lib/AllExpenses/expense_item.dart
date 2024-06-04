import 'package:flutter/material.dart';
import 'package:responsive_dashboard/AllExpenses/active_and_inactive_expense_item.dart';
import 'package:responsive_dashboard/Models/expense_item_model.dart';

class ExpenseItem extends StatelessWidget {
  final ExpenseItemModel itemModel;
  final bool isActive;
  const ExpenseItem({
    super.key,
    required this.itemModel,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return ActiveExpenseItem(
      itemModel: itemModel,
      isActive: isActive,
    );
  }
}
